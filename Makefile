all: test.out

test.out: test.c
	$(CC) -o test.out test.c -Wall -std=c99 --coverage

test: all
	sh test.sh && gcov *.gcda

clean:
	rm -f test.out *.gcda *.gcno *.gcov
