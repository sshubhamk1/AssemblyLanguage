#!/bin/bash
echo "compiling with nasm..."
nasm -f elf32 -o $1.o $1.nasm
echo "[+] Compiling done"
echo "linking with ld..."
# if want to link with ld replace gcc with ld
gcc -o $1 $1.o
echo "[+] linking done"
echo "file with name $1 is created!"
