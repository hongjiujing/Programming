/*
 * 程序清单 16-4 用于获取服务器 uptime 的客户端命令
 *
 * 这个程序连接服务器，读取服务器发送过来的字符串并将其打印到标准输出。
 *
 * 编译方法：
 *     $ cc err.c figure16-2.c figure16-4.c -o ruptime
 *
 * 使用方法：
 *     $ ./ruptime server-name
 */

#include "apue.h"
#include <netdb.h>
#include <errno.h>
#include <sys/socket.h>

#define MAXADDRLEN      256
#define BUFLEN          128

extern int connect_retry(int, const struct sockaddr *, socklen_t);

void
print_uptime(int sockfd)
{
  int n;
  char buf[BUFLEN];

  while ((n = recv(sockfd, buf, BUFLEN, 0)) > 0)
    write(STDOUT_FILENO, buf, n);
  if (n < 0)
    err_sys("recv error");
}

int
main(int argc, char *argv[])
{
  struct addrinfo *ailist, *aip;
  struct addrinfo hint;
  int sockfd, err;

  if (argc != 2)
    err_quit("usage: ruptime hostname");

  hint.ai_flags = 0;
  hint.ai_family = 0;
  hint.ai_socktype = SOCK_STREAM;
  hint.ai_protocol = 0;
  hint.ai_addrlen = 0;
  hint.ai_canonname = NULL;
  hint.ai_addr = NULL;
  hint.ai_next = NULL;

  if ((err = getaddrinfo(argv[1], "ruptime", &hint, &ailist)) != 0)
    err_quit("getaddrinfo error: %s", gai_strerror(err));

  for (aip = ailist; aip != NULL; aip = aip->ai_next) {
    if ((sockfd = socket(aip->ai_family, SOCK_STREAM, 0)) < 0)
      err = errno;
    if (connect_retry(sockfd, aip->ai_addr, aip->ai_addrlen) < 0) {
      err = errno;
    } else {
      print_uptime(sockfd);
      exit(0);
    }
  }

  fprintf(stderr, "can't connect to %s: %s\n", argv[1], strerror(err));
  exit(1);
}

/* figure16-4.c ends here */
