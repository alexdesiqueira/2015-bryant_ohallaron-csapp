	.file	"2_0-pg68_2.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"(500 * 400) * (300 * 200) = %d\n"
	.align 8
.LC1:
	.string	"((500 * 400) * 300) * 200 = %d\n"
	.align 8
.LC2:
	.string	"((200 * 500) * 300) * 400 = %d\n"
	.align 8
.LC3:
	.string	"400 * (200 * (300 * 500)) = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$-884901888, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-884901888, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$-884901888, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$-884901888, %esi
	movl	$.LC3, %edi
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
