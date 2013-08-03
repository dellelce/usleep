
#
# tools, 2013 by Antonio Dell'elce, antonio@dellelce.com
#

CC             = gcc
TARGET         = usleep

SHELL          = /bin/bash

CFILES         = usleep.c
OFILES         = usleep.o
LDFLAGS	       = 


LOC_HFILES     = 
HFILES         = $(LOC_HFILES)

INCLUDES       =  -I.
DEBUG          = 
CFLAGS         = -Wall -O2  $(INCLUDES) $(DEBUG)
LIBS           = 


#
# --- RULES ---
#

all: $(TARGET)

$(TARGET):   $(OFILES)
	@echo "LINK " $(TARGET)
	@$(CC) -o $(TARGET) $(LDFLAGS) $(OFILES) $(LIBS)

#
# -- DEPS --
#

usleep.o: usleep.c $(HFILES) 
	@echo "CC "usleep.c
	@$(CC) -c $(CFLAGS) -o usleep.o usleep.c

 
#  
# clean
#    
     
clean:
	rm -f $(TARGET) $(OFILES) $(LOC_HFILES) *.exe

#
# redo
#

redo: clean all

