[org 0x0100]

num1: dw 10, 20, 30, 40, 50, 10, 20, 30, 40, 50

result: dw 0

start:

;initialize stuff

mov ax, 2

mov bx, 4

outerloop:

	add ax, [num1 + bx]

	add bx, 2

	cmp bx, 20

	jne outerloop

mov [result], ax

mov ax, 0x4c00

int 0x21

