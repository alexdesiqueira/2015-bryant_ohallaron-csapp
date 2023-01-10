	.file	"3_5_3-lec3-1h10m.c"
	.intel_syntax noprefix
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB11:
	.cfi_startproc
	lea	rax, [rdi+rsi]
	add	rax, rdx
	lea	rdx, [rsi+rsi*2]
	sal	rdx, 4
	lea	rdx, [rdi+4+rdx]
	imul	rax, rdx
	ret
	.cfi_endproc
.LFE11:
	.size	arith, .-arith
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	mov	eax, 0
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
