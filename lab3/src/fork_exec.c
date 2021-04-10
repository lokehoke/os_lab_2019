#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main (int argc, char** argv) {
    pid_t pid = fork();

    if (pid == 0) {
        execv("sequential_min_max.o", argv);
    }

    wait(NULL);
    return 0;
}
