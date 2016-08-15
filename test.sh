#!/bin/sh

result=`./test.out 0 1000 2000 -1500`
if [ "${result}" != "1500" ]; then
  exit 1
fi

result=`./test.out`
if [ "${result}" != "0" ]; then
  exit 1
fi

result=`./test.out "A" 1 2 3 4 5 6 7 8 "9" 10 ああああ -10000055`
if [ "${result}" != "-10000000" ]; then
  exit 1
fi

exit 0
