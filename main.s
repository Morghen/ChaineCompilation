	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"DEBUT"
.LC1:
	.string	"1\t"
.LC2:
	.string	"%d\t"
.LC3:
	.string	"\nFIN"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$1, -16(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	addl	$1, -16(%rbp)
.L2:
	cmpl	$19, -16(%rbp)
	jle	.L3
	movl	$.LC3, %edi
	call	puts
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
