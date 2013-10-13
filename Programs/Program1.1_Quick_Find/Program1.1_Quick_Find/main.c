//
//  main.c
//  Program 1.1
//  Quick-find solution to connectivity problem
//  Created by Mingming Wang on 10/13/13.
//  Copyright (c) 2013 NA. All rights reserved.
//

#include <stdio.h>
#define N 100
int main(int argc, const char * argv[])
{
    int i,p,q,t,id[N];
    for (i=0; i<N; i++) {
        id[i]=i;
    }
    printf("Please input a pair of integers:\n");
    while (scanf("%d-%d", &p,&q)) {
        
        if (p==0 && q==0) {
            printf("Bye bye.\n");
            break;
        }
        if (id[p]==id[q]) {
            printf(">>%d and %d are already connected. \n", p, q);
            continue;
        }
        
        for (t= id[p],i=0;i<N ; i++) {
            
            if (t==id[i]) {
                id[i] = id[q];
            }
        }
        printf(">>New pair: %d-%d \n", p, q);
    }
    return 0;
}

