#ifndef __MESH_H_
#define __MESH_H_

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char *argv[]){
  /*
    This program aims to generate a squarred mesh of nxn elements, n being a
    parameter passed through argv. The output is made via printf, so has to be
    redirected into a file while making.

   */
  
  int m, n, i, j, a, b;
  double ha, hb;

  srand( time(NULL) );
  
  m = atoi(argv[1]);
  n = atoi(argv[2]);
  a = atoi(argv[3]);
  b = atoi(argv[4]);

  
  ha = (double)a;
  ha /= m;
  hb = (double)b; 
  hb /= n;
  
  if ( argc < 5 )
    return 1;

  for (i = 0; i < n;  i++){
    for (j = 0; j < m; j++){
      printf("%f    %f    %d\n", ha*j, hb*i, i+j );
      printf("%f    %f    %d\n", ha*(j+1), hb*i, i+j);
      printf("%f    %f    %d\n", ha*(j+1), hb*(i+1),i+j );
      printf("%f    %f    %d\n", ha*j,  hb*(i+1), i+j);
      printf("\n\n");
    }
  }


  
  return 0;
}







#endif
