OBJS = add_64bit.o

# For debugging `export DEBUG=1`
# or `export DEBUG=` for non-debugging mode
# use `make -B` to force rebuild

ifdef DEBUG
	DEBUGFLGS = -g
else
	DEBUGFLGS =
endif

a.out: $(OBJS)
	ld -o a.out $(OBJS)

%.o: %.s
	as $(DEBUGFLGS) $< -o $@

clean:
	rm -f *.o a.out
