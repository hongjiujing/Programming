/*
 * 程序清单 19-6 loop 函数
 *
 * 该函数仅仅是将从标准输入接收到的所有内容复制到 PTY 主设备，并将 PTY 主设备
 * 接收到的所有内容复制到标准输出。尽管使用 select() 或 poll() 的单进程或多线程
 * 是可行的，但是为了有所变化，我们程序里使用了两个进程。
 */

#include "apue.h"

#define BUFFSIZE 512

static void sig_term(int);
static volatile sig_atomic_t sigcaught; /* set by signal handler */

void
loop(int ptym, int ignoreeof)
{
  pid_t child;
  int nread;
  char buf[BUFFSIZE];

  if ((child = fork()) < 0) {
    err_sys("fork error");
  } else if (child == 0) {      /* child copies stdin to ptym */
    for (;;) {
      if ((nread = read(STDIN_FILENO, buf, BUFFSIZE)) < 0)
        err_sys("read error from stdin");
      else if (nread == 0)
        break;                  /* EOF on stdin means we're done */
      if (writen(ptym, buf, nread) != nread)
        err_sys("writen error to master pty");
    }

    /*
     * We always terminate when we encounter an EOF on stdin,
     * but we notify the parent only if ignoreeof is 0.
     */
    if (ignoreeof == 0)
      kill(getppid(), SIGTERM); /* notify parent */
    exit(0);                    /* and terminate; child can't return */
  }

  /*
   * Parent copies ptym to stdout.
   */
  if (signal_intr(SIGTERM, sig_term) == SIG_ERR)
    err_sys("signal_intr error for SIGTERM");

  for (;;) {
    if ((nread = read(ptym, buf, BUFFSIZE)) <= 0)
      break;                    /* signal caught, error, or EOf */
    if (writen(STDOUT_FILENO, buf, nread) != nread)
      err_sys("writen error to stdout");
  }

  /*
   * There are three ways to get here: sig_term() below caught the
   * SIGTERM from the child, we read an EOF on the pty master (which
   * means we have to signal the child to stop), or an error.
   */
  if (sigcaught == 0)           /* tell child if it didn't send us the signal */
    kill(child, SIGTERM);

  /*
   * Parent returns to caller.
   */
}

/*
 * The child sends us SIGTERM when it gets EOF on the pty slave or
 * when read() fails.  We probably interrupted the read() of ptym.
 */
static void
sig_term(int signo)
{
  sigcaught = 1;                /* just set flag and return */
}

/* figure19-6.c ends here */
