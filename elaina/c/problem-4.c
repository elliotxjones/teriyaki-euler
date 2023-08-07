#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int reverse_num(int num) {
    char num_str[6];
    sprintf(num_str, "%d", num);
    int num_len = strlen(num_str);

    char reverse_str[6];

    int i;
    int j = 0;
    for (i = num_len-1; i > -1; i--) {
        reverse_str[j] = num_str[i];
        j++;
    };
    
    int new_num = atoi(reverse_str);
    
    return new_num;
}

int get_max(int num) {
      
}

void main() {
    int x,y;
    int max_num = 0;
    for (x = 999; x > 0; x--) {
        for (y = x; y > 0; y--) {
            int m = x*y;
            int r = reverse_num(m);
            if (m == r && m > max_num) {            
                max_num = m;
            }
        };
    };

    printf("%d\n", max_num);
}
