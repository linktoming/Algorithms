//
//  main.c
//  Program1.3_Weighted_Quick_Union
//
//  Created by Mingming Wang on 10/15/13.
//  Copyright (c) 2013 NA. All rights reserved.
//

#include <stdio.h>
#define N 100
int main(int argc, const char * argv[])
{
    int i,j, p, q, id[N], sz[N];
    
    for (i = 0; i < N; i++) {
        id[i] = i;
        sz[i] = 1;
    }
    
    printf("Please input two numders seperated by '-':\n");
    while (scanf("%d-%d", &p, &q) == 2) {
        
        for (i = p; id[i] != i; i = id[i]);
        for (j = q; id[j] != j; j = id[j]);
        
        if (i == j) {
            printf("Exsiting Pair.\n");
            continue;
        }
        
        if (sz[i] < sz[j]) {
            
            id[i] = j;
            sz[j] += sz[i];
            
        }else{
            
            id[j] = i;
            sz[i] += sz[j];
        }
        printf("New Pair: %d-%d\n", p, q);
    }
    
    return 0;
}

