	.file	"2_4_6-pp2_54.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(int)(double) %d = %d\n"
.LC1:
	.string	"(int)(float) %d = %d\n"
.LC3:
	.string	"(float)(double) %f = %f\n"
.LC4:
	.string	"-(-(%f)) = %f\n"
.LC5:
	.string	"1.0/2 == 1/2.0: %d\n"
.LC6:
	.string	"(f+d)-f: %f = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$-2147483648, %edx
	movl	$-2147483648, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-2147483648, %edx
	movl	$-2147483648, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm1
	movq	%rax, %xmm0
	movl	$.LC3, %edi
	movl	$2, %eax
	call	printf
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm1
	movq	%rax, %xmm0
	movl	$.LC4, %edi
	movl	$2, %eax
	call	printf
	movl	$1, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm1
	movq	%rax, %xmm0
	movl	$.LC6, %edi
	movl	$2, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	-1042284544
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
