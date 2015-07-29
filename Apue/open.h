/*
 * 程序清单 17-18  open.h 头文件
 */

#ifndef OPEN_H
#define OPEN_H

#include "apue.h"
#include <errno.h>

#define CL_OPEN "open"          /* client's request for server */

int csopen(char *, int);

#endif  /* OPEN_H */
