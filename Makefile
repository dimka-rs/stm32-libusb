LIB=-L/usr/lib/libusb-1.0 -lusb-1.0
INC=-I/usr/include/libusb-1.0
TARGET=stm32-libusb
BUILD=build
SRC=src/*.c

all: $(BUILD) $(BUILD)/$(TARGET)

$(BUILD):
	mkdir $@

$(BUILD)/$(TARGET): $(SRC)
	gcc -g -o $@ $(SRC) $(INC) $(LIB)

.PHONY: clean
clean:
	rm -rf $(BUILD)

.PHONY: run
run:
	$(BUILD)/$(TARGET)