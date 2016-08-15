#include <inttypes.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  intmax_t sum = 0;
  for (size_t i = 1; i < argc; i++) {
    sum += atoi(argv[i]);
  }
  printf("%" PRIdMAX "\n", sum);
  return EXIT_SUCCESS;
}
