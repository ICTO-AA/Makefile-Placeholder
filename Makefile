PROJECT_NAME := ILoveCompiling
MODE := debug # debug is the only option, anything else will output to release

COMP := gcc
C_VER := 23

ifeq ($(MODE),debug)
	FILE_PATH := ./debug
else
	FILE_PATH := ./release
endif

FILES := $(wildcard ./src/*.c)
FILES += $(wildcard ./src/*.h)

setup:
	mkdir -p src debug release

main:
	$(COMP) $(FILES) -o $(FILE_PATH)/main

all: setup main