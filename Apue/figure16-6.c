/*
 * 程序清单 16-6 用于显示命令直接写到套接字的服务器程序
 *
 * 编译方法：
 *     $ cc err.c figure13-1.c figure16-3.c figure16-6.c -o ruptimed
 *
 * 注意：应该修改 /etc/services 文件，参考 figure16-5.c
 */

#include "apue.h"
#include <netdb.h>
#include <errno.h>
#include <syslog.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <sys/wait.h>

#define QLEN 10

#ifndef HOST_NAME_MAX
#  define HOST_NAME_MAX 256
#endif

extern int initserver(int, struct sockaddr *, socklen_t, int);

void
serve(int sockfd)
{
  int clfd, status;
  pid_t pid;

  for (;;) {
    clfd = accept(sockfd, NULL, NULL);
    if (clfd < 0) {
      syslog(LOG_ERR, "ruptimed: accept error: %s", strerror(errno));
      exit(1);
    }
    if ((pid = fork()) < 0) {
      syslog(LOG_ERR, "ruptimed: fork error: %s", strerror(errno));
      exit(1);
    } else if (pid == 0) {      /* child */
      /*
       * The parent called daemonize (Figure 13.1), so
       * STDIN_FILENO, STDOUT_FILENO, and STDERR_FILENO
       * are already open to /dev/null.  Thus, the call to
       * close doesn't need to be protected by checks that
       * clfd isn't already equal to one of these values.
       */
      if (dup2(clfd, STDOUT_FILENO) != STDOUT_FILENO ||
          dup2(clfd, STDERR_FILENO) != STDERR_FILENO) {
        syslog(LOG_ERR, "ruptimed: unexpected error");
        exit(1);
      }
      close(clfd);
      execl("/usr/bin/uptime", "uptime", (char *)0);
      syslog(LOG_ERR, "ruptimed: unexpected return from exec: %s", strerror(errno));
    } else {                    /* parent */
      close(clfd);
      waitpid(pid, &status, 0);
    }
  }
}

#if defined(_SC_HOST_NAME_MAX)
static int
get_hostname_max(void)
{
  int n = sysconf(_SC_HOST_NAME_MAX);
  return (n < 0) ? HOST_NAME_MAX : n;
}
#else
static inline int
get_hostname_max(void)
{
  return HOST_NAME_MAX;
}
#endif

int
main(int argc, char *argv[])
{
  struct addrinfo *ailist, *aip;
  struct addrinfo hint;
  int sockfd, err, n;
  char *host;

  if (argc != 1)
    err_quit("usage: ruptimed");

  n = get_hostname_max();
  host = malloc(n);
  if (host == NULL)
    err_sys("malloc error");
  if (gethostname(host, n) < 0)
    err_sys("gethostname error");

  daemonize("ruptimed");        /* figure13-1.c */

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
    /* initserver: figure16-3.c */
    if ((sockfd = initserver(SOCK_STREAM, aip->ai_addr, aip->ai_addrlen, QLEN)) >= 0) {
      serve(sockfd);
      exit(0);
    }
  }

  exit(1);
}

/* figure16-6.c ends here */
