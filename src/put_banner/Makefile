ASM= nasm
ASMFLAGS= -felf64

LD= ld
LDFLAGS= 

SRC= put-banner_src.asm
TARGET= put-banner_src.o
OBJ= put-banner_src

all:
	$(ASM) $(ASMFLAGS) $(SRC) -o $(TARGET)
	$(LD) $(LDFLAGS) $(TARGET) -o $(OBJ)

$(OBJ):
	$(ASM) $(ASMFLAGS) $(SRC) -o $(TARGET)
	$(LD) $(LDFLAGS) $(TARGET) -o $(OBJ)
	rm $(TARGET)

clean:
	rm $(TARGET) $(OBJ)

