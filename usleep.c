/* 

   File:    usleep.c
   Created: 0401 030813

*/

// includes

#include <stdio.h>
#include <unistd.h> // usleep
#include <stdlib.h> // atoi

// main

int
main (int argc, char **argv)
{
  // insert code here
  unsigned int secs;

  if (argc < 2)
  {
    secs = 100;
  } 
  else
  {
    secs = atoi(argv[1]);
  }

  if (secs == 0) secs = 100; // mini-sanity test

  usleep((useconds_t)secs);

  // generic return

  return 0;
}

