/*
 * 程序清单 16-5 提供系统 uptime 的服务器程序
 *
 * 编译方法：
 *     $ cc err.c figure13-1.c figure16-3.c figure16-5.c -o ruptimed
 *
 * 编译完成之后，还需要设置 /etc/services 这个文件，一定要确保端口号 8888 没有被使用
 *     $ grep 8888 /etc/services # 这个命令没有输出才能使用 8888 作为端口号
 *     $ sudo cp -v /etc/services{,.bak}
 *     $ sudo sh -c 'echo "ruptime 8888/tcp" >> /etc/services'
 *
 * 参考链接：
 *     http://blog.csdn.net/andyxie407/article/details/1672325
 */

#include "apue.h"
#include <netdb.h>
#include <errno.h>
#include <syslog.h>
#include <sys/socket.h>

#define BUFLEN  128
#define QLEN    10

#ifndef HOST_NAME_MAX
#  define HOST_NAME_MAX 256
#endif

extern int initserver(int, struct sockaddr *, socklen_t, int);

void
serve(int sockfd)
{
  int clfd;
  FILE *fp;
  char buf[BUFLEN];

  for (;;) {
    clfd = accept(sockfd, NULL, NULL);
    if (clfd < 0) {
      syslog(LOG_ERR, "ruptimed: accept error: %s", strerror(errno));
      exit(1);
    }
    if ((fp = popen("/usr/bin/uptime", "r")) == NULL) {
      sprintf(buf, "error: %s\n", strerror(errno));
      send(clfd, buf, strlen(buf), 0);
    } else {
      while (fgets(buf, BUFLEN, fp) != NULL)
        send(clfd, buf, strlen(buf), 0);
      pclose(fp);
    }
    close(clfd);
  }
}

int
main(int argc, char *argv[])
{
  struct addrinfo *ailist, *aip;
  struct addrinfo hint;
  int sockfd, err, n;
  char *host;

  if (argc != 1)
    err_quit("usage: ruptimed");
#ifdef _SC_HOST_NAME_MAX
  n = sysconf(_SC_HOST_NAME_MAX);
  if (n < 0)                    /* best guess */
#endif
    n = HOST_NAME_MAX;
  host = malloc(n);
  if (host == NULL)
    err_sys("malloc error");
  if (gethostname(host, n) < 0)
    err_sys("gethostname error");
  daemonize("ruptimed");
  hint.ai_flags = AI_CANONNAME;
  hint.ai_family = 0;
  hint.ai_socktype = SOCK_STREAM;
  hint.ai_protocol = 0;
  hint.ai_addrlen = 0;
  hint.ai_canonname = NULL;
  hint.ai_addr = NULL;
  hint.ai_next = NULL;
  if ((err = getaddrinfo(host, "ruptime", &hint, &ailist)) != 0) {
    syslog(LOG_ERR, "ruptimed: getaddrinfo error: %s", gai_strerror(err));
    exit(1);
  }
  for (aip = ailist; aip != NULL; aip = aip->ai_next) {
    if ((sockfd = initserver(SOCK_STREAM, aip->ai_addr, aip->ai_addrlen, QLEN)) >= 0) {
      serve(sockfd);
      exit(0);
    }
  }
  exit(1);
}

/* figure16-5.c ends here */
