OBJS = bootstrap.o

# For debugging `export DEBUG=1`
# or `export DEBUG=` for non-debugging mode
# use `make -B` to force rebuild

ifdef DEBUG
	DEBUGFLGS = -g
else
	DEBUGFLGS =
endif

a.out: $(OBJS)
	gcc -o a.out $(OBJS)

%.o: %.s
	as $(DEBUGFLGS) -mfpu=vfpv2 $< -o $@

clean:
	rm -f *.o a.out
