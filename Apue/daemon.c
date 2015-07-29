#include "apue.h"

extern void daemonize(const char *);

int main(void)
{
  daemonize("a.out");
  sleep(60);

  return 0;
}
