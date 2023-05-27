#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <syslog.h>
#include <errno.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char * argv[]){
    openlog(NULL, 0, LOG_USER);
    if(argc != 3){
        syslog(LOG_ERR, "Invalid number of arguments %d\n", argc);
        return 1;
    }else{
        FILE* file = fopen(argv[1],"w");
        if (file == NULL) {
            syslog(LOG_ERR, "Couldn't open file %s, %m\n", argv[1]);
            exit(1);
        } else {
            fputs(argv[2], file);
            syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
            fclose(file);
            return 0;
        }
    }
}