	.file	"2_1_5-pg85.c"
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
	.globl	sum
	.type	sum, @function
sum:
.LFB12:
	.cfi_startproc
	leal	(%rsi,%rdi), %eax
	ret
	.cfi_endproc
.LFE12:
	.size	sum, .-sum
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$4, %esi
	movl	$3, %edi
	call	sum
	movw	%ax, 14(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$8, %esi
	movq	%rsp, %rdi
	call	show_bytes
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
