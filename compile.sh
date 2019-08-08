#!/bin/bash
echo "[+] compiling..."
nasm -f elf32 -o $1.o $1.nasm
echo "[+] Compiling done"
echo "linking..."
ld -o $1 $1.o
echo "[+] lnking done"
echo "[+] file with name $1 is created!"
