#include <stdio.h>
#include <sys/time.h>

int main()
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    printf("%ld.%06.0f\n", tv.tv_sec, (float)tv.tv_usec);
    return 0;
}
