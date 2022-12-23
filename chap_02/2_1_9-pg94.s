	.file	"2_1_9-pg94.c"
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
	.section	.rodata.str1.1
.LC1:
	.string	"* x1: \t\t\t"
.LC2:
	.string	"* ux1: \t\t\t"
.LC3:
	.string	"* x1 << 4: \t\t"
.LC4:
	.string	"* ux1 >> (log) 4: \t"
.LC5:
	.string	"* x1 >> (arit) 4: \t"
.LC6:
	.string	"\n* x2: \t\t\t"
.LC7:
	.string	"* ux2: \t\t\t"
.LC8:
	.string	"* x2 << 4: \t\t"
.LC9:
	.string	"* ux2 >> (log) 4: \t"
.LC10:
	.string	"* x2 >> (arit) 4: \t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movb	$99, 15(%rsp)
	movb	$99, 14(%rsp)
	movb	$-107, 13(%rsp)
	movb	$-107, 12(%rsp)
	movb	$48, 11(%rsp)
	movb	$6, 10(%rsp)
	movb	$6, 9(%rsp)
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	15(%rsp), %rdi
	call	show_bytes
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	14(%rsp), %rdi
	call	show_bytes
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	11(%rsp), %rdi
	call	show_bytes
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	10(%rsp), %rdi
	call	show_bytes
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	9(%rsp), %rdi
	call	show_bytes
	movzbl	13(%rsp), %eax
	movsbl	%al, %edx
	sall	$4, %edx
	movb	%dl, 8(%rsp)
	movzbl	12(%rsp), %edx
	shrb	$4, %dl
	movb	%dl, 7(%rsp)
	sarb	$4, %al
	movb	%al, 6(%rsp)
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	13(%rsp), %rdi
	call	show_bytes
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	12(%rsp), %rdi
	call	show_bytes
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	8(%rsp), %rdi
	call	show_bytes
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	7(%rsp), %rdi
	call	show_bytes
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %esi
	leaq	6(%rsp), %rdi
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
