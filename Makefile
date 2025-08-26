PROJECT_NAME := ILoveCompiling

COMP := gcc
C_VER := 23

ifeq ($(DEBUG),true)
	FILE_PATH := ./debug
else
	FILE_PATH := ./release
endif

FILES := $(wildcard ./src/*.c)
FILES += $(wildcard ./src/*.h)
FILES += $(wildcard ./src/*.cpp)
FILES += $(wildcard ./src/*.hpp)

setup:
	mkdir -p src debug release

main:
	$(COMP) $(FILES) -o $(FILE_PATH)/main

all: setup main