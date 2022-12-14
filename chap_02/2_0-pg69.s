	.file	"2_0-pg69.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(3.14+1e20)-1e20 = %f\n"
.LC3:
	.string	"3.14+(1e20-1e20) = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm0, %xmm0
	movl	$.LC0, %edi
	movl	$1, %eax
	call	printf
	movsd	.LC2(%rip), %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
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
	.long	1610612736
	.long	1074339512
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
