/*
 * 程序清单 17-21  opend.h 头文件版本 1
 */

#ifndef OPEN_H
#define OPEN_H

#include "apue.h"
#include <errno.h>

#define CL_OPEN "open"          /* client's request for server */

extern char errmsg[];           /* error message string to return to client */
extern int oflag;               /* open() flag: O_xxx ... */
extern char *pathname;          /* of file to open() for client */

int cli_args(int, char **);
void request(char *, int, int);

#endif  /* OPEN_H */
