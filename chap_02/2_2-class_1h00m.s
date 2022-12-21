	.file	"2_2-class_1h00m.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"* value of i: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %ebx
.L2:
	movl	%ebx, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	subl	$1, %ebx
	jmp	.L2
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
