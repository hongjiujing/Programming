/*
 * 程序清单 17-24 buf_args 函数
 *
 * buf_args 函数将字符串分解成标准 argv 型参数表，并调用用户函数处理参数
 */

#include "apue.h"

#define MAXARGC 50              /* max number of arguments in buf */
#define WHITE " \t\n"           /* white space for tokenizing arguments */

/*
 * buf[] contains white-space-separated arguments.  We convert it to an
 * argv-style array of pointers, and call the user's function (optfunc)
 * to process the array.  We return -1 if there's a problem parsing buf,
 * else we return whatever optfunc() returns.  Note that user's buf[]
 * array is modified (nulls placed after each token).
 */
int
buf_args(char *buf, int (*optfunc)(int, char **))
{
  char *ptr, *argv[MAXARGC];
  int argc;

  if (strtok(buf, WHITE) == NULL) /* an argv[0] is required */
    return -1;
  argv[argc = 0] = buf;
  while ((ptr = strtok(NULL, WHITE)) != NULL) {
    if (++argc >= MAXARGC-1)    /* -1 for room for NULL at end */
      return -1;
    argv[argc] = ptr;
  }
  argv[++argc] = NULL;

  /*
   * Since argv pointers point into the user's buf[],
   * user's function can just copy the pointers, even
   * though argv[] array will disappear on return.
   */
  return (*optfunc)(argc, argv);
}

/* figure17-24.c ends here */
