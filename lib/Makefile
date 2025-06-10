NASM    = nasm
NASMFLAGS = -f elf64
CC      = gcc
AR      = ar
ARFLAGS = rcs

ASM_SRCS = clear-scr.asm put-banner.asm
ASM_OBJS = $(ASM_SRCS:.asm=.o)

LIB_NAME = libptools.a

C_SRC = example.c
C_OBJ = example.o

TARGET = example

all: $(TARGET)

# Compile assembly files
%.o: %.asm
	$(NASM) $(NASMFLAGS) $< -o $@

# Compile C file
$(C_OBJ): $(C_SRC)
	$(CC) -c $< -o $@

# Create static library
$(LIB_NAME): $(ASM_OBJS)
	$(AR) $(ARFLAGS) $@ $^

# Link everything together
$(TARGET): $(C_OBJ) $(LIB_NAME)
	$(CC) $< -L. -lptools -o $@

# Clean up build files
clean:
	rm -f *.o *.a $(TARGET)
