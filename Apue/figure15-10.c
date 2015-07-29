/*
 * 程序清单 15-10 对两个数求和的过滤程序，使用标准 I/O
 */

#include "apue.h"

int
main(void)
{
  int int1, int2;
  char line[MAXLINE];

  while (fgets(line, MAXLINE, stdin) != NULL) {
    if (sscanf(line, "%d%d", &int1, &int2) == 2) {
      if (printf("%d\n", int1 + int2) == EOF)
        err_sys("printf error");
    } else {
      if (printf("invalid args\n") == EOF)
        err_sys("printf error");
    }
  }
  exit(0);
}

/* figure15-10.c ends here */
