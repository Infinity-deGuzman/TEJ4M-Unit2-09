/* -- loop01.s */
.text
.global main
main:
	mov r1, #0	@ r1 <- 0
	mov r2, #1	@ r2 <- 1
if:
	cmp r2, #100	@ compare r2 and 100
	bgt else	@ branch if r2 > 100 to end
	add r1, r1, r2	@ r1 <- r1 +r2
	add r2, r2, #1	@ r2 <- r2 + 1
	b	if
else:
	mov r0, r1	@ r0 <- r1
	bx	lr
