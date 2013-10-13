//
//  main.c
//  Program1.2_Quick_Union
//
//  Created by Mingming Wang on 13/10/13.
//  Copyright (c) 2013 Mingming Wang. All rights reserved.
//

#include <stdio.h>
#define N 100
int main(int argc, const char * argv[])
{
    int i,j,p,q,id[N];
    for (i=0; i<N; i++) {
        id[i]=i;
    }
    printf("Please input a pair of integers:\n");
    
    while (scanf("%d-%d", &p,&q)) {
        for (i=p; i!=id[i]; i=id[i]);
        for (j=q; j!=id[j]; j=id[j]);
        
        if (i==j) {
            printf(">>%d and %d are already connected. \n", p, q);
            continue;
        }
        id[i] = j;
        printf(">>New pair: %d-%d \n", p, q);
    }
    return 0;
}

