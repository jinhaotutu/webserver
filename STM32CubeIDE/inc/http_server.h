#ifndef HTTP_SERVER_H
#define HTTP_SERVER_H

/*
*********************************************************************************************************
*                                              INCLUDE FILES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               CONSTANTS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             PERIPH DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               DATA TYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            GLOBAL VARIABLES
*********************************************************************************************************
*/

struct http_state {
  struct fs_file *handle;
  char *file;       /* Pointer to first unsent byte in buf. */

#if 1
  struct pbuf *req;
#endif /* LWIP_HTTPD_SUPPORT_REQUESTLIST */

#if 1
  char *buf;        /* File read buffer. */
  int buf_len;      /* Size of file read buffer, buf. */
#endif /* LWIP_HTTPD_SSI || LWIP_HTTPD_DYNAMIC_HEADERS */
  u32_t left;       /* Number of unsent bytes in buf. */
  u8_t retries;
#if 0
  const char *parsed;     /* Pointer to the first unparsed byte in buf. */
#if 1
  const char *tag_started;/* Poitner to the first opening '<' of the tag. */
#endif /* !LWIP_HTTPD_SSI_INCLUDE_TAG */
  const char *tag_end;    /* Pointer to char after the closing '>' of the tag. */
  u32_t parse_left; /* Number of unparsed bytes in buf. */
  u16_t tag_index;   /* Counter used by tag parsing state machine */
  u16_t tag_insert_len; /* Length of insert in string tag_insert */
#if 0
  u16_t tag_part; /* Counter passed to and changed by tag insertion function to insert multiple times */
#endif /* LWIP_HTTPD_SSI_MULTIPART */
  u8_t tag_check;   /* true if we are processing a .shtml file else false */
  u8_t tag_name_len; /* Length of the tag name in string tag_name */
  char tag_name[LWIP_HTTPD_MAX_TAG_NAME_LEN + 1]; /* Last tag name extracted */
  char tag_insert[LWIP_HTTPD_MAX_TAG_INSERT_LEN + 1]; /* Insert string for tag_name */
  enum tag_check_state tag_state; /* State of the tag processor */
#endif /* LWIP_HTTPD_SSI */
#if 0
  char *params[LWIP_HTTPD_MAX_CGI_PARAMETERS]; /* Params extracted from the request URI */
  char *param_vals[LWIP_HTTPD_MAX_CGI_PARAMETERS]; /* Values for each extracted param */
#endif /* LWIP_HTTPD_CGI */
#if 0
  const char *hdrs[NUM_FILE_HDR_STRINGS]; /* HTTP headers to be sent. */
  u16_t hdr_pos;     /* The position of the first unsent header byte in the
                        current string */
  u16_t hdr_index;   /* The index of the hdr string currently being sent. */
#endif /* LWIP_HTTPD_DYNAMIC_HEADERS */
#if 0
  u32_t time_started;
#endif /* LWIP_HTTPD_TIMING */
#if 0
  u32_t post_content_len_left;
#if 0
  u32_t unrecved_bytes;
  struct tcp_pcb *pcb;
  u8_t no_auto_wnd;
#endif /* LWIP_HTTPD_POST_MANUAL_WND */
#endif /* LWIP_HTTPD_SUPPORT_POST*/
};

/*
*********************************************************************************************************
*                                                 MACRO'S
*********************************************************************************************************
*/



/*
*********************************************************************************************************
*                                           FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void Http_Server_Init(void);

/*
********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif /* HTTP_SERVER_H */
