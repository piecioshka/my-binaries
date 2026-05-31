CC      ?= cc
CFLAGS  ?= -Wall -Wextra -O2
BINDIR  ?= bin

.PHONY: all clean

all: $(BINDIR)/timestamp

$(BINDIR):
	mkdir -p $@

$(BINDIR)/timestamp: $(BINDIR)/timestamp.c | $(BINDIR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(BINDIR)/timestamp
