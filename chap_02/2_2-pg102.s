	.file	"2_2-pg102.c"
	.text
	.globl	return_positive
	.type	return_positive, @function
return_positive:
.LFB11:
	.cfi_startproc
	movl	%edi, %eax
	testl	%edi, %edi
	js	.L3
.L2:
	ret
.L3:
	negl	%eax
	jmp	.L2
	.cfi_endproc
.LFE11:
	.size	return_positive, .-return_positive
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"* Positive of x: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$-42, %edi
	call	return_positive
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-2147483648, %edi
	call	return_positive
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
