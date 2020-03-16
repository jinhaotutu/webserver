#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/tcp.h"
#include "http_server.h"
#include "fs.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

/*
*********************************************************************************************************
*                                            LOCAL TABLES
*********************************************************************************************************
*/
static err_t http_server_accept(void *arg, struct tcp_pcb *pcb, err_t err);
static err_t http_server_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *tcp_recv_pbuf, err_t err);
static err_t http_server_poll(void *arg, struct tcp_pcb *pcb);
static err_t http_init_file(struct http_state *hs, struct fs_file *file, int is_09, const char *uri);
static err_t http_find_file(struct http_state *hs, const char *uri, int is_09);
static err_t http_parse_request(struct pbuf **inp, struct http_state *hs, struct tcp_pcb *pcb);
static u8_t http_send_data(struct tcp_pcb *pcb, struct http_state *hs);
static err_t http_sent(void *arg, struct tcp_pcb *pcb, u16_t len);
static void close_conn(struct tcp_pcb *pcb, struct http_state *hs);

/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

/***
 * 函数名称 : Http_Server_Init();
 *
 * 函数描述 : web服务器初始化;
 *
 * 传递值	  : 无;
 *
 * 返回值   : 无;
 *
 **/
void Http_Server_Init(void)
{
		struct tcp_pcb *http_server_pcb;

		/* 为web服务器分配一个tcp_pcb结构体 */
		http_server_pcb = tcp_new();
		
		/* 绑定本地端号和IP地址 */
		tcp_bind(http_server_pcb, IP_ADDR_ANY, 80);

		/* 监听之前创建的结构体http_server_pcb */
		http_server_pcb = tcp_listen(http_server_pcb);
	
		/* 初始化结构体接收回调函数 */
		tcp_accept(http_server_pcb, http_server_accept);
}

/***
 * 函数名称 : http_server_accept();
 *
 * 函数描述 : lwip数据接收回调函数，包含对tcp连接的确认，接收回调函数的配置;
 *
 * 传递值	  : *arg, *pcb, err ;
 *
 * 返回值   : ERR_OK 无错误;
 *
 **/
static err_t http_server_accept(void *arg, struct tcp_pcb *pcb, err_t err)
{
		struct http_state *hs;
	
		/* 分配内存空间 */
		hs = (struct http_state *)mem_malloc(sizeof(struct http_state));
	
		if (hs != NULL)
		{
				memset(hs, 0, sizeof(struct http_state));
		}
		
		/* 确认监听和连接 */
		tcp_arg(pcb, hs);
		
		/* 配置接收回调函数 */
		tcp_recv(pcb, http_server_recv);

		/* 配置轮询回调函数 */
		tcp_poll(pcb, http_server_poll, 4);
	
		/* 配置发送回调函数 */
		tcp_sent(pcb, http_sent);
	
		return ERR_OK;
}

/***
 * 函数名称 : http_server_recv();
 *
 * 函数描述 : 接受到数据后，根据接收到数据的内容，返回网页;
 *
 * 传递值	  : *arg, *pcb, *http_recv_pbuf, err;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_server_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *http_recv_pbuf, err_t err)
{
	  err_t parsed = ERR_ABRT;
		struct http_state *hs = (struct http_state *)arg;

		/* 告诉tcp已经接收到数据 */
		tcp_recved(pcb, http_recv_pbuf->tot_len);
	
		if (hs->handle == NULL)
		{
				/* 解析接收到的浏览器请求数据 */
				parsed = http_parse_request(&http_recv_pbuf, hs, pcb);
		}
		
    /* 清空请求字符串 */
		if (parsed != ERR_INPROGRESS) 
		{		
        if (hs->req != NULL) 
			  {
            pbuf_free(hs->req);
            hs->req = NULL;
        }
    }
		
		if (parsed == ERR_OK)
		{
				/* 发送网页数据 */
				http_send_data(pcb, hs);
		}
		else if (parsed == ERR_ARG)
		{
			/* 关闭连接 */
				close_conn(pcb, hs);
		}

		return ERR_OK;
}

/***
 * 函数名称 : http_server_poll();
 *
 * 函数描述 : 轮询函数;
 *
 * 传递值	  : *arg, *pcb;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_server_poll(void *arg, struct tcp_pcb *pcb)
{
		struct http_state *hs = arg;
	
		if (hs == NULL)
		{
				close_conn(pcb, hs);
				return ERR_OK;
		}
		else
		{
				hs->retries++;
				if (hs->retries == 4)
				{
						close_conn(pcb, hs);
						return ERR_OK;
				}
				
        /* 如果连接存在打开的文件，则将会发送剩下的数据；
         * 如果一直没有收到GET请求，那么连接将会立刻关闭 */
				if (hs && (hs->handle))
				{
						if (http_send_data(pcb, hs))
						{
								tcp_output(pcb);
						}
				}
		}
		
		return ERR_OK;
}

/***
 * 函数名称 : http_parse_request();
 *
 * 函数描述 : 对接收到的数据进行解析，根据不同的浏览器请求，返回对应的网页数据;
 *
 * 传递值	  : **inp, *hs, *pcb;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_parse_request(struct pbuf **inp, struct http_state *hs, struct tcp_pcb *pcb)
{
		char *data;
		char *crlf;
		u16_t data_len;
		struct pbuf *p = *inp;
	
		char *sp1, *sp2;
		u16_t uri_len;
		char *uri;
	
		/* 排列字符串 */
		if (hs->req == NULL)
		{
				hs->req = p;
		}
		else
		{
        /* 将多次的请求字符串进行连接排序 */
				pbuf_cat(hs->req, p);
		}
		
		/* 拷贝输入数据 */ 
    if (hs->req->next != NULL)
    {
		    data_len = hs->req->tot_len;
        pbuf_copy_partial(hs->req, data, data_len, 0);
    }
		else
		{
		    data = (char *)p->payload;
		    data_len = p->len;
		}
		
		/* 提取接收到的浏览器字符串，浏览器请求示例："GET / HTTP/1.1" */
		if (data_len > 7) 
		{
				crlf = strstr(data, "\r\n");
				if (crlf != NULL) 
				{
					  /* 比较前4个字符是否为 "GET " */
					  if (strncmp(data, "GET ", 4) == 0) 
					  {
							  /* sp1指向字符串 "/ HTTP/1.1" */
							  sp1 = (data + 4);
					  }
					  /* 在sp1字符串中寻找字符" "，sp2指向字符串 " HTTP/1.1" */
					  sp2 = strstr(sp1, " ");
					  /* uri_len获取sp1字符串首地址到sp2字符串首地址的长度 */
					  uri_len = sp2 - (sp1);

					  if ((sp2 != 0) && (sp2 >= (sp1))) 
					  {
							  /* 将解析的字符串赋给uri，并在最后加上结束符\0，uri指向字符串 "/\0" */
							  uri = sp1;
							  *(sp1 - 1) = 0;
							  uri[uri_len] = 0;
							
							  /* 根据字符串寻找对应网页数据 */
							  return http_find_file(hs, uri, 0); 
					  }
				}
		}
		
		return ERR_OK;
}

/***
 * 函数名称 : http_find_file();
 *
 * 函数描述 : 对提取的数据进行判断，读取对应的网页数据;
 *
 * 传递值	  : *hs, *uri, is_09;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_find_file(struct http_state *hs, const char *uri, int is_09)
{
  struct fs_file *file = NULL;

	/* 如果字符串为 "/\0",则打开index网页 */
  if((uri[0] == '/') && (uri[1] == 0)) 
	{
			file = fs_open("/index.html");
      uri = "/index.html";
  } 
	else 
	{
		  /* 如果为其他请求，则打开相应网页 */
      file = fs_open(uri);
  }
	
	/* 将网页文件数据赋值给http_state结构体，之后发送出去 */
  return http_init_file(hs, file, is_09, uri);
}

/***
 * 函数名称 : http_init_file();
 *
 * 函数描述 : 将要发送的数据保存到http_state结构体当中;
 *
 * 传递值	  : *hs, *file, is_09, *uri;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_init_file(struct http_state *hs, struct fs_file *file, int is_09, const char *uri)
{
  if (file != NULL) 
	{
    hs->handle = file;
		/* 将网页数据赋值给http_state */
    hs->file = (char*)file->data;
		/* 将网页长度赋值给http_state */
    hs->left = file->len;
    hs->retries = 0;
  } 
	else 
	{
    hs->handle = NULL;
    hs->file = NULL;
    hs->left = 0;
    hs->retries = 0;
  }

  return ERR_OK;
}

/***
 * 函数名称 : http_send_data();
 *
 * 函数描述 : 数据发送函数;
 *
 * 传递值	  : *pcb, *hs;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static u8_t http_send_data(struct tcp_pcb *pcb, struct http_state *hs)
{
		err_t err = ERR_OK;
		u16_t len;
		u8_t data_to_send = 0;
		
		/* 配置发送数据长度，如果发送数据过长则分批发送 */
		if (tcp_sndbuf(pcb) < hs->left)
		{
				len = tcp_sndbuf(pcb);
		}
		else
		{
				len = (u16_t)hs->left;
		}		

    /* 发送网页数据 */
		err = tcp_write(pcb, hs->file, len, 1);
		
		if (err == ERR_OK)
		{
				data_to_send = 1;
				hs->file += len;
				hs->left -= len;
		}
		
		if ((hs->left == 0) && (fs_bytes_left(hs->handle) <= 0))
		{
        /* 关闭连接 */
				close_conn(pcb, hs);
				return 0;
		}
		
		return data_to_send;
}


/***
 * 函数名称 : http_sent();
 *
 * 函数描述 : 数据已经被发送，并且被远程主机确定;
 *
 * 传递值	  : *arg, *pcb, len;
 *
 * 返回值   : ERR_OK无错误;
 *
 **/
static err_t http_sent(void *arg, struct tcp_pcb *pcb, u16_t len)
{
	struct http_state *hs = (struct http_state *)arg;
	
	if (hs == NULL)
	{
			return ERR_OK;
	}
	
	hs->retries = 0;

	http_send_data(pcb, hs);

  return ERR_OK;
}

/***
 * 函数名称 : close_conn();
 *
 * 函数描述 : 关闭tcp连接;
 *
 * 传递值	  : *pcb, *hs;
 *
 * 返回值   : 无;
 *
 **/
static void close_conn(struct tcp_pcb *pcb, struct http_state *hs)
{
		tcp_arg(pcb, NULL);
		tcp_recv(pcb, NULL);
		tcp_err(pcb, NULL);
		tcp_poll(pcb, NULL, 0);
		tcp_sent(pcb, NULL);
	
    if (hs != NULL) 
		{
				if(hs->handle) 
				{
						fs_close(hs->handle);
						hs->handle = NULL;
				}
				mem_free(hs);
		}

		tcp_close(pcb);
}
