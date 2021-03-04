#include "revert_string.h"
#include <string.h>

void RevertString(char *str)
{
	size_t l = strlen(str);
    char t;

    for (size_t i = 0; i < l / 2; ++i) {
        t = str[i];
        str[i] = str[l - 1 - i];
        str[l - 1 - i] = t;
    }
}

