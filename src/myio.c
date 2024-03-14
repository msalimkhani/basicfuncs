#include "../libs/myio.h"
ssize_t print(const char *__buf, size_t len)
{
    return write(STDOUT, __buf,len);
}
ssize_t print_fd(const char *__buf, size_t len, int fd)
{
    return write(fd, __buf,len);
}