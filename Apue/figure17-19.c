/*
 * 程序清单 17-19  客户进程 main 函数版本 1
 *
 * 定义客户进程和服务器进程间的应用程序协议如下：
 *
 *     1. 客户进程通过 s 管道向服务器进程发送“open <pathname> <openmode>\0”
 *        形式的请求，<openmode>是 open 函数的第二个参数，以 ASCII 十进制数表示。
 *        该请求字符串以 null 字节结尾
 *
 *     2. 服务器进程调用 send_fd 或 send_err 回送一打开描述符或一条出错消息
 *
 * 编译方法：
 *     $ cc err.c figure17-{6,15,19,20}.c
 */

#include "open.h"
#include <fcntl.h>

#define BUFFSIZE 8192

int
main(int argc, char *argv[])
{
  int n, fd;
  char buf[BUFFSIZE], line[MAXLINE];

  /* read filename to cat from stdin */
  while (fgets(line, MAXLINE, stdin) != NULL) {
    if (line[strlen(line) - 1] == '\n')
      line[strlen(line) - 1] = 0; /* replace newline with null */

    /* open the file */
    if ((fd = csopen(line, O_RDONLY)) < 0)
      continue;                 /* csopen() prints error from server */

    /* and cat to stdout */
    while ((n = read(fd, buf, BUFFSIZE)) > 0)
      if (write(STDOUT_FILENO, buf, n) != n)
        err_sys("write error");
    if (n < 0)
      err_sys("read error");
    close(fd);
  }

  exit(0);
}

/* figure17-19.c ends here */
