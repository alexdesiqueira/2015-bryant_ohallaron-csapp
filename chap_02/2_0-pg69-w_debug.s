	.file	"2_0-pg69.c"
	.text
.Ltext0:
	.file 0 "/var/home/alex/docs/learning_bench/csapp_experiments/chap_02" "2_0-pg69.c"
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
	.file 1 "2_0-pg69.c"
	.loc 1 4 1 view -0
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 5 3 view .LVU1
.LVL0:
	.loc 1 6 3 view .LVU2
	.loc 1 8 3 view .LVU3
	pxor	%xmm0, %xmm0
	movl	$.LC0, %edi
	movl	$1, %eax
	call	printf
.LVL1:
	.loc 1 9 3 view .LVU4
	movsd	.LC2(%rip), %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
.LVL2:
	.loc 1 11 3 view .LVU5
	.loc 1 12 1 is_stmt 0 view .LVU6
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
	.text
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x134
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x6
	.long	0x6d
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.value	0x164
	.byte	0xc
	.long	0x5f
	.long	0x91
	.uleb128 0x8
	.long	0x91
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x74
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0x5f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x130
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.long	0x130
	.byte	0x4
	.long	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x6
	.long	0x130
	.byte	0x4
	.long	0x4048f5c3
	.uleb128 0xc
	.quad	.LVL1
	.long	0x79
	.long	0x105
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0xd
	.quad	.LVL2
	.long	0x79
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x60000000
	.long	0x40091eb8
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"GNU C17 12.2.1 20221121 (Red Hat 12.2.1-4) -mtune=generic -march=x86-64 -g -Og"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF11:
	.string	"exp_1"
.LASF12:
	.string	"exp_2"
.LASF10:
	.string	"char"
.LASF5:
	.string	"unsigned char"
.LASF16:
	.string	"main"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"double"
.LASF6:
	.string	"short unsigned int"
.LASF15:
	.string	"printf"
.LASF13:
	.string	"float"
.LASF8:
	.string	"short int"
.LASF7:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"2_0-pg69.c"
.LASF1:
	.string	"/var/home/alex/docs/learning_bench/csapp_experiments/chap_02"
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits
