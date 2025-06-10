ASM= nasm
ASMFLAGS= -felf64

LD= ld
LDFLAGS= 

SRC= clear-scr_src.asm
TARGET= clear-scr_src.o
OBJ= clear-scr_src

all:
	$(ASM) $(ASMFLAGS) $(SRC) -o $(TARGET)
	$(LD) $(LDFLAGS) $(TARGET) -o $(OBJ)

$(OBJ):
	$(ASM) $(ASMFLAGS) $(SRC) -o $(TARGET)
	$(LD) $(LDFLAGS) $(TARGET) -o $(OBJ)
	rm $(TARGET)

clean:
	rm $(TARGET) $(OBJ)

