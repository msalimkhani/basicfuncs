#pragma once
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#define fileFlags 0102
#define fileMode 00600
#define STDOUT 0
ssize_t print(const char *__buf, size_t len);
ssize_t print_fd(const char *__buf, size_t len, int fd);