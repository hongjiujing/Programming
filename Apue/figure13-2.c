/*
 * 程序清单 13-2 保证只运行某个守护进程的一个副本
 *
 * 守护进程的每个副本都将试图创建一个文件，并将其进程 ID 写到该文件中。
 * 这使管理人员易于标识该进程。如果该文件已经加了锁，那么 lockfile() 将失败，
 * errno 设置为 EACCES 或 EAGAIN，函数返回 1，这表明守护进程已在运行。
 * 否则将文件长度截短为 0，将进程 ID 写入该文件，函数返回 0.
 *
 * 将文件长度截短为 0，其原因是以前守护进程实例的进程 ID 字符串可能长于调用此函数
 * 的当前进程的进程 ID 字符串。例如，若以前的守护进程的进程 ID 是 12345，而新实例
 * 的进程 ID 是 9999，那么将此进程 ID 写入文件后，在文件中留下的是 99995。将文件
 * 长度截短为 0 就解决了此问题。
 */

#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <syslog.h>
#include <string.h>
#include <errno.h>
#include <stdio.h>
#include <sys/stat.h>

#define LOCKFILE "/var/run/daemon.pid"
#define LOCKMODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH)

extern int lockfile(int);

int
already_running(void)
{
  int fd;
  char buf[16];

  fd = open(LOCKFILE, O_RDWR|O_CREAT, LOCKMODE);
  if (fd < 0) {
    syslog(LOG_ERR, "can't open %s: %s", LOCKFILE, strerror(errno));
    exit(1);
  }
  if (lockfile(fd) < 0) {
    if (errno == EACCES || errno == EAGAIN) {
      close(fd);
      return 1;
    }
    syslog(LOG_ERR, "can't lock %s: %s", LOCKFILE, strerror(errno));
    exit(1);
  }
  ftruncate(fd, 0);
  sprintf(buf, "%ld", (long)getpid());
  write(fd, buf, strlen(buf)+1);
  return 0;
}

/* figure13-2.c ends here */
