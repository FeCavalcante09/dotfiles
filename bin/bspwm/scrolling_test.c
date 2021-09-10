#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ECHO_SIZE 50


int main() {
    char string[72] = "6gb9Al1aTU8i2tcE8IZ76YwGD9fMUR55t - Y0IHPIo87GWR8IkXBrUxlSVm339jL3aARv  "; // Holds song info
    
    // i = counts for program stop, string_len = lenght of the info string
    // echo_len = lenght of the shown string, offset = difference between
    //                                        to be truncated string and info
    int x = 0, targetLen=0, cursor=0; 

    targetLen = strlen(string);
    while (x <= targetLen-1) {
        if (cursor == (targetLen-1)) cursor = 0;

        if (cursor < (targetLen-ECHO_SIZE)) {
            for (int i = cursor; i < (cursor+ECHO_SIZE); i++) {
                printf("%c", string[i]);
            }
            printf("\n");
        } else {
            for (int i = cursor; i < (targetLen-1); i++) {
                printf("%c", string[i]);
            }

            for (int i = 0; i <= cursor - (targetLen-ECHO_SIZE); i++) {
                printf("%c", string[i]);
            }
            printf("\n");
        }
        cursor++;
        x++;
    }
    
}
