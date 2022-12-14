	.file	"pp2_2.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d \t %d \t\t 0x%x\n"
	.text
	.globl	print_n_line
	.type	print_n_line, @function
print_n_line:
.LFB11:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, %ebx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edi, %xmm2
	movapd	%xmm2, %xmm1
	movq	%xmm2, %r14
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow
	movsd	%xmm0, 8(%rsp)
	movq	%r14, %xmm1
	movq	.LC0(%rip), %rax
	movq	%rax, %xmm0
	call	pow
	cvttsd2sil	8(%rsp), %ecx
	cvttsd2sil	%xmm0, %edx
	movl	%ebx, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_n_line, .-print_n_line
	.globl	print_dec_or_hex_line
	.type	print_dec_or_hex_line, @function
print_dec_or_hex_line:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	call	log2
	cvttsd2sil	%xmm0, %esi
	movl	%ebx, %ecx
	movl	%ebx, %edx
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	print_dec_or_hex_line, .-print_dec_or_hex_line
	.section	.rodata.str1.1
.LC2:
	.string	"n \t 2^n (dec) \t 2^n (hex)"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"----------------------------------"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC2, %edi
	call	puts
	movl	$.LC3, %edi
	call	puts
	movl	$5, %edi
	call	print_n_line
	movl	$23, %edi
	call	print_n_line
	movl	$32768, %edi
	call	print_dec_or_hex_line
	movl	$8192, %edi
	call	print_dec_or_hex_line
	movl	$12, %edi
	call	print_n_line
	movl	$64, %edi
	call	print_dec_or_hex_line
	movl	$256, %edi
	call	print_dec_or_hex_line
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
