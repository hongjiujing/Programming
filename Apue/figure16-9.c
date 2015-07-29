/*
 * 程序清单 16-9 采用地址复用初始化套接字端点
 */

#include "apue.h"
#include <errno.h>
#include <sys/socket.h>

int
initserver(int type, const struct sockaddr *addr, socklen_t alen, int qlen)
{
  int fd, err;
  int reuse = 1;

  if ((fd = socket(addr->sa_family, type, 0)) < 0)
    return -1;
  if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(int)) < 0)
    goto errout;
  if (bind(fd, addr, alen) < 0)
    goto errout;
  if (type == SOCK_STREAM || type == SOCK_SEQPACKET)
    if (listen(fd, qlen) < 0)
      goto errout;
  return fd;

 errout:
  err = errno;
  close(fd);
  errno = err;
  return -1;
}

/* figure16-9.c ends here */
