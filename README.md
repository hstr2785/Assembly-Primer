# Assembly-Primer

## Setup
To run it, make sure that [gcc](https://gcc.gnu.org/) and [nasm](https://sourceforge.net/projects/nasm/) are installed. 

On Ubuntu:

`sudo apt install build-essential`

`sudo apt install gcc-multilib nasm`

## Compiling

`nasm -f elf filename.asm`

`gcc -m32 filiename.o -o filename`


`./filename`
