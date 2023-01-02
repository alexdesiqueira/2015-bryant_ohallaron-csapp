	.file	"2-3_pg142.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"* x = \t%d, k = \t%d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"* (x + (1 << k) - 1) >> k = \t%d\n"
	.align 8
.LC2:
	.string	"* ceil((double) (x / pow(2, k))) = \t%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$4, %edx
	movl	$30, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$2, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$2, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
