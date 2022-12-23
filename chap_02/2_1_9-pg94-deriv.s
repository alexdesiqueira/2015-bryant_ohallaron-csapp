	.file	"2_1_9-pg94-deriv.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" %x "
	.text
	.globl	show_bytes
	.type	show_bytes, @function
show_bytes:
.LFB11:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%rsi, %rbp
	movl	$0, %ebx
	jmp	.L2
.L3:
	movzbl	(%r12,%rax), %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, %ebx
.L2:
	movslq	%ebx, %rax
	cmpq	%rbp, %rax
	jb	.L3
	movl	$10, %edi
	call	putchar
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	show_bytes, .-show_bytes
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	$1, 44(%rsp)
	leaq	44(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	movl	$4, %esi
	call	show_bytes
	movl	$8, %esi
	leaq	32(%rsp), %rdi
	call	show_bytes
	movl	$2, 28(%rsp)
	leaq	28(%rsp), %rdi
	movq	%rdi, 16(%rsp)
	movl	$4, %esi
	call	show_bytes
	movl	$8, %esi
	leaq	16(%rsp), %rdi
	call	show_bytes
	movl	$4, 12(%rsp)
	leaq	12(%rsp), %rdi
	movq	%rdi, (%rsp)
	movl	$4, %esi
	call	show_bytes
	movl	$8, %esi
	movq	%rsp, %rdi
	call	show_bytes
	movl	$0, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
