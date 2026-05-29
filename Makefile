CC      ?= cc
CFLAGS  ?= -Wall -Wextra -O2
BINDIR  := bin

.PHONY: all clean

all: $(BINDIR)/timestamp

$(BINDIR)/timestamp: $(BINDIR)/timestamp.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(BINDIR)/timestamp
