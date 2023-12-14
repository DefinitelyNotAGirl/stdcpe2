# cpe2

.extern charP8_cpuVendor
.extern voidP8_calloc_u64_u64
.extern voidP8_zalloc_u64
.extern voidP8_malloc_u64
.extern void_free_voidP8
.extern voidP8_realloc_voidP8_u64
.extern void_memcpy_voidP8_voidP8_u64
.extern calloc
.extern malloc
.extern free
.extern strlen
.extern __fd_cout
.extern __fd_out
.extern __fd_cerr
.extern __fd_err
.extern format_num
.extern format_dec
.extern format_hex
.extern format_bin
.extern format_oct
.extern char_endl
.extern u64_write___fd_u64_u64
.extern u64_write___fd_charP8_u64
.extern __fd_operatorLESSERLESSER___fd_charP8
.extern __fd_operatorLESSERLESSER___fd_char
.extern __fd_operatorLESSERLESSER___fd_u64
.extern __fd_operatorLESSERLESSER___fd_i64
.extern __fd_operatorLESSERLESSER___fd_u32
.extern __fd_operatorLESSERLESSER___fd_i32
.extern __fd_operatorLESSERLESSER___fd_u16
.extern __fd_operatorLESSERLESSER___fd_i16
.extern __fd_operatorLESSERLESSER___fd_u8
.extern __fd_operatorLESSERLESSER___fd_i8
.extern __fd_operatorLESSERLESSER___fd_f64
.extern __fd_operatorLESSERLESSER___fd_f32
.extern __fd_operatorLESSERLESSER___fd_format
.extern u64_strlen_charP8
.extern u64_strcpy_charP8_charP8
.global __fd_cout
.global __fd_out
.global __fd_cerr
.global __fd_err
.global format_num
.global format_dec
.global format_hex
.global format_bin
.global format_oct
.global char_endl
.global format_numberFormat
.global __fd_operatorLESSERLESSER___fd_charP8
.global __fd_operatorLESSERLESSER___fd_char
.global __fd_operatorLESSERLESSER___fd_format
.global __fd_operatorLESSERLESSER___fd_u64

.data
__fd_cout:
.quad 1
__fd_out:
.quad 1
__fd_cerr:
.quad 2
__fd_err:
.quad 2
format_num:
.quad 257
format_dec:
.quad 257
format_hex:
.quad 258
format_bin:
.quad 259
format_oct:
.quad 260
char_endl:
.byte 10
format_numberFormat:
.quad 257
		__cpe2InternalName_229__:
			.byte 104
			.byte 101
			.byte 120
			.byte 32
			.byte 105
			.byte 110
			.byte 116
			.byte 0
		__cpe2InternalName_232__:
			.byte 100
			.byte 101
			.byte 99
			.byte 32
			.byte 105
			.byte 110
			.byte 116
			.byte 0
		__cpe2InternalName_235__:
			.byte 111
			.byte 99
			.byte 116
			.byte 32
			.byte 105
			.byte 110
			.byte 116
			.byte 0
		__cpe2InternalName_238__:
			.byte 98
			.byte 105
			.byte 110
			.byte 32
			.byte 105
			.byte 110
			.byte 116
			.byte 0

.section .rodata

.bss

.text
__fd_operatorLESSERLESSER___fd_charP8:
	sub $32, %rsp
	mov %rdi, 0(%rsp)
	mov %rsi, 8(%rsp)
	mov %r8, 16(%rsp)
	mov %rsi, %rdi
	call u64_strlen_charP8
	mov 0(%rsp), %rdi
	mov 8(%rsp), %rsi
	mov 16(%rsp), %r8
	mov %rax, %r8
	mov %rdi, 0(%rsp)
	mov %rsi, 8(%rsp)
	mov %r8, 16(%rsp)
	mov %r8, %rdx
	call u64_write___fd_charP8_u64
	mov 0(%rsp), %rdi
	mov 8(%rsp), %rsi
	mov 16(%rsp), %r8
	mov %rdi, %rax
	jmp __fd_operatorLESSERLESSER___fd_charP8.epilogue
	__fd_operatorLESSERLESSER___fd_charP8.epilogue:
	add $32, %rsp
	ret

__fd_operatorLESSERLESSER___fd_char:
	sub $32, %rsp
	xor %r8, %r8
	mov $0, %r8
	add %rsp, %r8
	mov %rsi, 0(%r8)
	mov %rdi, 1(%rsp)
	mov %rsi, 9(%rsp)
	mov %r8, 17(%rsp)
	mov %r8, %rsi
	xor %rdx, %rdx
	mov $1, %rdx
	call u64_write___fd_charP8_u64
	mov 1(%rsp), %rdi
	mov 9(%rsp), %rsi
	mov 17(%rsp), %r8
	mov %rdi, %rax
	jmp __fd_operatorLESSERLESSER___fd_char.epilogue
	__fd_operatorLESSERLESSER___fd_char.epilogue:
	add $32, %rsp
	ret

__fd_operatorLESSERLESSER___fd_format:
	# 
	cmp $256,%rsi
	jle __fd_operatorLESSERLESSER___fd_format.boolRetConditional0
	clc
	__fd_operatorLESSERLESSER___fd_format.boolRetConditional0.reentry:
	jc __fd_operatorLESSERLESSER___fd_format.if0
	# 
	__fd_operatorLESSERLESSER___fd_format.conditional1.reentry:
	mov %rdi, %rax
	jmp __fd_operatorLESSERLESSER___fd_format.epilogue
	__fd_operatorLESSERLESSER___fd_format.epilogue:
	ret
	__fd_operatorLESSERLESSER___fd_format.boolRetConditional0:
		stc
		jmp __fd_operatorLESSERLESSER___fd_format.boolRetConditional0.reentry
	__fd_operatorLESSERLESSER___fd_format.if0:
		mov %rsi, format_numberFormat
		jmp __fd_operatorLESSERLESSER___fd_format.conditional1.reentry

__fd_operatorLESSERLESSER___fd_u64:
	sub $48, %rsp
	# 
	movq format_hex, %rcx
	cmpq %rcx, format_numberFormat
	je __fd_operatorLESSERLESSER___fd_u64.boolRetConditional0
	clc
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional0.reentry:
	jc __fd_operatorLESSERLESSER___fd_u64.if0
	# 
	# 
	movq format_dec, %rcx
	cmpq %rcx, format_numberFormat
	je __fd_operatorLESSERLESSER___fd_u64.boolRetConditional1
	clc
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional1.reentry:
	jc __fd_operatorLESSERLESSER___fd_u64.elseif0
	# 
	# 
	movq format_oct, %rcx
	cmpq %rcx, format_numberFormat
	je __fd_operatorLESSERLESSER___fd_u64.boolRetConditional2
	clc
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional2.reentry:
	jc __fd_operatorLESSERLESSER___fd_u64.elseif1
	# 
	# 
	movq format_bin, %rcx
	cmpq %rcx, format_numberFormat
	je __fd_operatorLESSERLESSER___fd_u64.boolRetConditional3
	clc
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional3.reentry:
	jc __fd_operatorLESSERLESSER___fd_u64.elseif2
	# 
	__fd_operatorLESSERLESSER___fd_u64.conditional1.reentry:
	mov %rdi, %rax
	jmp __fd_operatorLESSERLESSER___fd_u64.epilogue
	__fd_operatorLESSERLESSER___fd_u64.epilogue:
	add $48, %rsp
	ret
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional0:
		stc
		jmp __fd_operatorLESSERLESSER___fd_u64.boolRetConditional0.reentry
	__fd_operatorLESSERLESSER___fd_u64.if0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		xor %rsi, %rsi
		mov $__cpe2InternalName_229__, %rsi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		jmp __fd_operatorLESSERLESSER___fd_u64.conditional1.reentry
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional1:
		stc
		jmp __fd_operatorLESSERLESSER___fd_u64.boolRetConditional1.reentry
	__fd_operatorLESSERLESSER___fd_u64.elseif0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		xor %rsi, %rsi
		mov $__cpe2InternalName_232__, %rsi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		jmp __fd_operatorLESSERLESSER___fd_u64.conditional1.reentry
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional2:
		stc
		jmp __fd_operatorLESSERLESSER___fd_u64.boolRetConditional2.reentry
	__fd_operatorLESSERLESSER___fd_u64.elseif1:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		xor %rsi, %rsi
		mov $__cpe2InternalName_235__, %rsi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		jmp __fd_operatorLESSERLESSER___fd_u64.conditional1.reentry
	__fd_operatorLESSERLESSER___fd_u64.boolRetConditional3:
		stc
		jmp __fd_operatorLESSERLESSER___fd_u64.boolRetConditional3.reentry
	__fd_operatorLESSERLESSER___fd_u64.elseif2:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		mov %r11, 40(%rsp)
		xor %rsi, %rsi
		mov $__cpe2InternalName_238__, %rsi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		mov 40(%rsp), %r11
		jmp __fd_operatorLESSERLESSER___fd_u64.conditional1.reentry
