# file generated with:
# $ gcc -Wall -Wextra  -masm=intel -fno-if-conversion -Og -S 3_6_7-lec6-40m.c
	.file	"3_6_7-lec6-40m.c"
	.intel_syntax noprefix
	.text
	.globl	pcount_do
	.type	pcount_do, @function
pcount_do:
.LFB11:
	.cfi_startproc
	mov	edx, 0
.L2:
	mov	rax, rdi
	and	eax, 1
	add	rax, rdx
	mov	rdx, rax
	shr	rdi
	jne	.L2
	ret
	.cfi_endproc
.LFE11:
	.size	pcount_do, .-pcount_do
	.globl	pcount_goto
	.type	pcount_goto, @function
pcount_goto:
.LFB12:
	.cfi_startproc
	mov	edx, 0
.L4:
	mov	rax, rdi
	and	eax, 1
	add	rax, rdx
	mov	rdx, rax
	shr	rdi
	jne	.L4
	ret
	.cfi_endproc
.LFE12:
	.size	pcount_goto, .-pcount_goto
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"* do_res: %ld\n"
.LC1:
	.string	"* goto_res: %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movabs	rbx, 4311748624
	mov	rdi, rbx
	call	pcount_do
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	mov	rdi, rbx
	call	pcount_goto
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	mov	eax, 0
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
