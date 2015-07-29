/*
 * 程序清单 17-22  服务器进程 main 函数版本 1
 *
 * 编译方法：
 *     $ cc err.c figure17-{11,14,22,23,24,25}.c -o opend
 */

#include "opend.h"

char errmsg[MAXLINE];
int oflag;
char *pathname;

int
main(void)
{
  int nread;
  char buf[MAXLINE];

  for (;;) {                    /* read arg buffer from client, process request */
    if ((nread = read(STDIN_FILENO, buf, MAXLINE)) < 0)
      err_sys("read error on stream pipe");
    else if (nread == 0)
      break;                    /* client has closed the stream pipe */
    request(buf, nread, STDOUT_FILENO);
  }
  exit(0);
}

/* figure17-22.c ends here */
