CC      ?= cc
CFLAGS  ?= -Wall -Wextra -O2
SRCDIR  ?= src
BINDIR  ?= bin

.PHONY: all clean

all: $(BINDIR)/timestamp

$(BINDIR):
	mkdir -p $@

$(BINDIR)/timestamp: $(SRCDIR)/timestamp.c | $(BINDIR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(BINDIR)/timestamp
