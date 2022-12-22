	.file	"2_2-pg113.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" %.2x"
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
	.section	.rodata.str1.1
.LC1:
	.string	"* sx  = %d:\t"
.LC2:
	.string	"* usx = %d:\t"
.LC3:
	.string	"* x = %d:\t"
.LC4:
	.string	"* ux = %d:\t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movw	$-12345, 14(%rsp)
	movw	$-12345, 12(%rsp)
	movl	$-12345, 8(%rsp)
	movl	$53191, 4(%rsp)
	movl	$-12345, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$2, %esi
	leaq	14(%rsp), %rdi
	call	show_bytes
	movzwl	12(%rsp), %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$2, %esi
	leaq	12(%rsp), %rdi
	call	show_bytes
	movl	8(%rsp), %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %esi
	leaq	8(%rsp), %rdi
	call	show_bytes
	movl	4(%rsp), %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$4, %esi
	leaq	4(%rsp), %rdi
	call	show_bytes
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
