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
.extern stream_info
.extern stream_error
.extern stream_warning
.extern stream_operatorLESSERLESSER_stream_charP8
.extern stream_operatorLESSERLESSER_stream_char
.extern stream_operatorLESSERLESSER_stream_u64
.extern stream_operatorLESSERLESSER_stream_i64
.extern stream_operatorLESSERLESSER_stream_u32
.extern stream_operatorLESSERLESSER_stream_i32
.extern stream_operatorLESSERLESSER_stream_u16
.extern stream_operatorLESSERLESSER_stream_i16
.extern stream_operatorLESSERLESSER_stream_u8
.extern stream_operatorLESSERLESSER_stream_i8
.extern stream_operatorLESSERLESSER_stream_f64
.extern stream_operatorLESSERLESSER_stream_f32
.extern stream_operatorLESSERLESSER_stream_format
.global stream_info
.global stream_warning
.global stream_error
.global stream_lastWrittenStream
.global stream_operatorLESSERLESSER_stream_charP8
.global stream_operatorLESSERLESSER_stream_char
.global stream_operatorLESSERLESSER_stream_format
.global stream_operatorLESSERLESSER_stream_u64

.data
stream_info:
.quad 4097
stream_warning:
.quad 4098
stream_error:
.quad 4099
stream_lastWrittenStream:
.quad 0
			__cpe2InternalName_258__:
				.byte 91
				.byte 73
				.byte 78
				.byte 70
				.byte 79
				.byte 93
				.byte 0
			__cpe2InternalName_301__:
				.byte 91
				.byte 87
				.byte 65
				.byte 82
				.byte 78
				.byte 73
				.byte 78
				.byte 71
				.byte 93
				.byte 0
			__cpe2InternalName_344__:
				.byte 91
				.byte 69
				.byte 82
				.byte 82
				.byte 79
				.byte 82
				.byte 93
				.byte 0

.section .rodata

.bss

.text
stream_operatorLESSERLESSER_stream_charP8:
	sub $96, %rsp
	mov %rbx, 59(%rsp)
	mov %r12, 67(%rsp)
	mov %r13, 75(%rsp)
	mov %r14, 83(%rsp)
	# 
	cmp stream_info,%rdi
	je stream_operatorLESSERLESSER_stream_charP8.boolRetConditional0
	clc
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional0.reentry:
	jc stream_operatorLESSERLESSER_stream_charP8.if0
	# 
	# 
	cmp stream_warning,%rdi
	je stream_operatorLESSERLESSER_stream_charP8.boolRetConditional1
	clc
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional1.reentry:
	jc stream_operatorLESSERLESSER_stream_charP8.elseif0
	# 
	# 
	cmp stream_error,%rdi
	je stream_operatorLESSERLESSER_stream_charP8.boolRetConditional2
	clc
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional2.reentry:
	jc stream_operatorLESSERLESSER_stream_charP8.elseif1
	# 
	stream_operatorLESSERLESSER_stream_charP8.conditional1.reentry:
	mov %rdi, %rax
	jmp stream_operatorLESSERLESSER_stream_charP8.epilogue
	stream_operatorLESSERLESSER_stream_charP8.epilogue:
	mov 59(%rsp), %rbx
	mov 67(%rsp), %r12
	mov 75(%rsp), %r13
	mov 83(%rsp), %r14
	add $96, %rsp
	ret
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional0:
		stc
		jmp stream_operatorLESSERLESSER_stream_charP8.boolRetConditional0.reentry
	stream_operatorLESSERLESSER_stream_charP8.if0:
		# 
		movq stream_info, %rcx
		cmpq %rcx, stream_lastWrittenStream
		jne stream_operatorLESSERLESSER_stream_charP8.if0.boolRetConditional0
		clc
		stream_operatorLESSERLESSER_stream_charP8.if0.boolRetConditional0.reentry:
		jc stream_operatorLESSERLESSER_stream_charP8.if0.if0
		# 
		stream_operatorLESSERLESSER_stream_charP8.if0.conditional1.reentry:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		mov %r11, 40(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		mov 40(%rsp), %r11
		jmp stream_operatorLESSERLESSER_stream_charP8.conditional1.reentry
		stream_operatorLESSERLESSER_stream_charP8.if0.boolRetConditional0:
			stc
			jmp stream_operatorLESSERLESSER_stream_charP8.if0.boolRetConditional0.reentry
		stream_operatorLESSERLESSER_stream_charP8.if0.if0:
			xor %r10, %r10
			mov $0, %r10
			add %rsp, %r10
			# cl is stored in r10
			movb $27, 0(%r10)
			movb $91, 1(%r10)
			movb $51, 2(%r10)
			movb $53, 3(%r10)
			movb $109, 4(%r10)
			movb $0, 5(%r10)
			xor %r11, %r11
			mov $6, %r11
			add %rsp, %r11
			# clr is stored in r11
			movb $27, 0(%r11)
			movb $91, 1(%r11)
			movb $48, 2(%r11)
			movb $109, 3(%r11)
			movb $0, 4(%r11)
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			mov %r10, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			xor %rsi, %rsi
			mov $__cpe2InternalName_258__, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			mov %r11, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			movq stream_info, %rcx
			movq %rcx, stream_lastWrittenStream
			jmp stream_operatorLESSERLESSER_stream_charP8.if0.conditional1.reentry
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional1:
		stc
		jmp stream_operatorLESSERLESSER_stream_charP8.boolRetConditional1.reentry
	stream_operatorLESSERLESSER_stream_charP8.elseif0:
		# 
		movq stream_warning, %rcx
		cmpq %rcx, stream_lastWrittenStream
		jne stream_operatorLESSERLESSER_stream_charP8.elseif0.boolRetConditional0
		clc
		stream_operatorLESSERLESSER_stream_charP8.elseif0.boolRetConditional0.reentry:
		jc stream_operatorLESSERLESSER_stream_charP8.elseif0.if0
		# 
		stream_operatorLESSERLESSER_stream_charP8.elseif0.conditional1.reentry:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		mov %r11, 40(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		mov 40(%rsp), %r11
		jmp stream_operatorLESSERLESSER_stream_charP8.conditional1.reentry
		stream_operatorLESSERLESSER_stream_charP8.elseif0.boolRetConditional0:
			stc
			jmp stream_operatorLESSERLESSER_stream_charP8.elseif0.boolRetConditional0.reentry
		stream_operatorLESSERLESSER_stream_charP8.elseif0.if0:
			xor %r10, %r10
			mov $0, %r10
			add %rsp, %r10
			# cl is stored in r10
			movb $27, 0(%r10)
			movb $91, 1(%r10)
			movb $51, 2(%r10)
			movb $52, 3(%r10)
			movb $109, 4(%r10)
			movb $0, 5(%r10)
			xor %r11, %r11
			mov $6, %r11
			add %rsp, %r11
			# clr is stored in r11
			movb $27, 0(%r11)
			movb $91, 1(%r11)
			movb $48, 2(%r11)
			movb $109, 3(%r11)
			movb $0, 4(%r11)
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			mov %r10, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			xor %rsi, %rsi
			mov $__cpe2InternalName_301__, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_out, %rdi
			mov %r11, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			movq stream_warning, %rcx
			movq %rcx, stream_lastWrittenStream
			jmp stream_operatorLESSERLESSER_stream_charP8.elseif0.conditional1.reentry
	stream_operatorLESSERLESSER_stream_charP8.boolRetConditional2:
		stc
		jmp stream_operatorLESSERLESSER_stream_charP8.boolRetConditional2.reentry
	stream_operatorLESSERLESSER_stream_charP8.elseif1:
		# 
		movq stream_error, %rcx
		cmpq %rcx, stream_lastWrittenStream
		jne stream_operatorLESSERLESSER_stream_charP8.elseif1.boolRetConditional0
		clc
		stream_operatorLESSERLESSER_stream_charP8.elseif1.boolRetConditional0.reentry:
		jc stream_operatorLESSERLESSER_stream_charP8.elseif1.if0
		# 
		stream_operatorLESSERLESSER_stream_charP8.elseif1.conditional1.reentry:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		mov %r11, 40(%rsp)
		xor %rdi, %rdi
		mov __fd_err, %rdi
		call __fd_operatorLESSERLESSER___fd_charP8
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		mov 40(%rsp), %r11
		jmp stream_operatorLESSERLESSER_stream_charP8.conditional1.reentry
		stream_operatorLESSERLESSER_stream_charP8.elseif1.boolRetConditional0:
			stc
			jmp stream_operatorLESSERLESSER_stream_charP8.elseif1.boolRetConditional0.reentry
		stream_operatorLESSERLESSER_stream_charP8.elseif1.if0:
			xor %r10, %r10
			mov $0, %r10
			add %rsp, %r10
			# cl is stored in r10
			movb $27, 0(%r10)
			movb $91, 1(%r10)
			movb $51, 2(%r10)
			movb $49, 3(%r10)
			movb $109, 4(%r10)
			movb $0, 5(%r10)
			xor %r11, %r11
			mov $6, %r11
			add %rsp, %r11
			# clr is stored in r11
			movb $27, 0(%r11)
			movb $91, 1(%r11)
			movb $48, 2(%r11)
			movb $109, 3(%r11)
			movb $0, 4(%r11)
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_err, %rdi
			mov %r10, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_err, %rdi
			xor %rsi, %rsi
			mov $__cpe2InternalName_344__, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			mov %rdi, 11(%rsp)
			mov %rsi, 19(%rsp)
			mov %r8, 27(%rsp)
			mov %r9, 35(%rsp)
			mov %r10, 43(%rsp)
			mov %r11, 51(%rsp)
			xor %rdi, %rdi
			mov __fd_err, %rdi
			mov %r11, %rsi
			call __fd_operatorLESSERLESSER___fd_charP8
			mov 11(%rsp), %rdi
			mov 19(%rsp), %rsi
			mov 27(%rsp), %r8
			mov 35(%rsp), %r9
			mov 43(%rsp), %r10
			mov 51(%rsp), %r11
			movq stream_error, %rcx
			movq %rcx, stream_lastWrittenStream
			jmp stream_operatorLESSERLESSER_stream_charP8.elseif1.conditional1.reentry

stream_operatorLESSERLESSER_stream_char:
	sub $48, %rsp
	# 
	cmp $10,%rsi
	je stream_operatorLESSERLESSER_stream_char.boolRetConditional0
	clc
	stream_operatorLESSERLESSER_stream_char.boolRetConditional0.reentry:
	jc stream_operatorLESSERLESSER_stream_char.if0
	# 
	stream_operatorLESSERLESSER_stream_char.else0:
		mov %rdi, stream_lastWrittenStream
	stream_operatorLESSERLESSER_stream_char.conditional1.reentry:
	# 
	cmp stream_info,%rdi
	je stream_operatorLESSERLESSER_stream_char.boolRetConditional1
	clc
	stream_operatorLESSERLESSER_stream_char.boolRetConditional1.reentry:
	jc stream_operatorLESSERLESSER_stream_char.if1
	# 
	# 
	cmp stream_warning,%rdi
	je stream_operatorLESSERLESSER_stream_char.boolRetConditional2
	clc
	stream_operatorLESSERLESSER_stream_char.boolRetConditional2.reentry:
	jc stream_operatorLESSERLESSER_stream_char.elseif0
	# 
	# 
	cmp stream_error,%rdi
	je stream_operatorLESSERLESSER_stream_char.boolRetConditional3
	clc
	stream_operatorLESSERLESSER_stream_char.boolRetConditional3.reentry:
	jc stream_operatorLESSERLESSER_stream_char.elseif1
	# 
	stream_operatorLESSERLESSER_stream_char.conditional2.reentry:
	mov %rdi, %rax
	jmp stream_operatorLESSERLESSER_stream_char.epilogue
	stream_operatorLESSERLESSER_stream_char.epilogue:
	add $48, %rsp
	ret
	stream_operatorLESSERLESSER_stream_char.boolRetConditional0:
		stc
		jmp stream_operatorLESSERLESSER_stream_char.boolRetConditional0.reentry
	stream_operatorLESSERLESSER_stream_char.if0:
		movq $0, stream_lastWrittenStream
		jmp stream_operatorLESSERLESSER_stream_char.conditional1.reentry
	stream_operatorLESSERLESSER_stream_char.boolRetConditional1:
		stc
		jmp stream_operatorLESSERLESSER_stream_char.boolRetConditional1.reentry
	stream_operatorLESSERLESSER_stream_char.if1:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_char
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		jmp stream_operatorLESSERLESSER_stream_char.conditional2.reentry
	stream_operatorLESSERLESSER_stream_char.boolRetConditional2:
		stc
		jmp stream_operatorLESSERLESSER_stream_char.boolRetConditional2.reentry
	stream_operatorLESSERLESSER_stream_char.elseif0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_char
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		jmp stream_operatorLESSERLESSER_stream_char.conditional2.reentry
	stream_operatorLESSERLESSER_stream_char.boolRetConditional3:
		stc
		jmp stream_operatorLESSERLESSER_stream_char.boolRetConditional3.reentry
	stream_operatorLESSERLESSER_stream_char.elseif1:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		mov %r11, 40(%rsp)
		xor %rdi, %rdi
		mov __fd_err, %rdi
		call __fd_operatorLESSERLESSER___fd_char
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		mov 40(%rsp), %r11
		jmp stream_operatorLESSERLESSER_stream_char.conditional2.reentry

stream_operatorLESSERLESSER_stream_format:
	sub $48, %rsp
	# 
	cmp stream_info,%rdi
	je stream_operatorLESSERLESSER_stream_format.boolRetConditional0
	clc
	stream_operatorLESSERLESSER_stream_format.boolRetConditional0.reentry:
	jc stream_operatorLESSERLESSER_stream_format.if0
	# 
	# 
	cmp stream_warning,%rdi
	je stream_operatorLESSERLESSER_stream_format.boolRetConditional1
	clc
	stream_operatorLESSERLESSER_stream_format.boolRetConditional1.reentry:
	jc stream_operatorLESSERLESSER_stream_format.elseif0
	# 
	# 
	cmp stream_error,%rdi
	je stream_operatorLESSERLESSER_stream_format.boolRetConditional2
	clc
	stream_operatorLESSERLESSER_stream_format.boolRetConditional2.reentry:
	jc stream_operatorLESSERLESSER_stream_format.elseif1
	# 
	stream_operatorLESSERLESSER_stream_format.conditional1.reentry:
	mov %rdi, stream_lastWrittenStream
	mov %rdi, %rax
	jmp stream_operatorLESSERLESSER_stream_format.epilogue
	stream_operatorLESSERLESSER_stream_format.epilogue:
	add $48, %rsp
	ret
	stream_operatorLESSERLESSER_stream_format.boolRetConditional0:
		stc
		jmp stream_operatorLESSERLESSER_stream_format.boolRetConditional0.reentry
	stream_operatorLESSERLESSER_stream_format.if0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_format
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		jmp stream_operatorLESSERLESSER_stream_format.conditional1.reentry
	stream_operatorLESSERLESSER_stream_format.boolRetConditional1:
		stc
		jmp stream_operatorLESSERLESSER_stream_format.boolRetConditional1.reentry
	stream_operatorLESSERLESSER_stream_format.elseif0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_format
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		jmp stream_operatorLESSERLESSER_stream_format.conditional1.reentry
	stream_operatorLESSERLESSER_stream_format.boolRetConditional2:
		stc
		jmp stream_operatorLESSERLESSER_stream_format.boolRetConditional2.reentry
	stream_operatorLESSERLESSER_stream_format.elseif1:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		xor %rdi, %rdi
		mov __fd_err, %rdi
		call __fd_operatorLESSERLESSER___fd_format
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		jmp stream_operatorLESSERLESSER_stream_format.conditional1.reentry

stream_operatorLESSERLESSER_stream_u64:
	sub $48, %rsp
	# 
	cmp stream_info,%rdi
	je stream_operatorLESSERLESSER_stream_u64.boolRetConditional0
	clc
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional0.reentry:
	jc stream_operatorLESSERLESSER_stream_u64.if0
	# 
	# 
	cmp stream_warning,%rdi
	je stream_operatorLESSERLESSER_stream_u64.boolRetConditional1
	clc
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional1.reentry:
	jc stream_operatorLESSERLESSER_stream_u64.elseif0
	# 
	# 
	cmp stream_error,%rdi
	je stream_operatorLESSERLESSER_stream_u64.boolRetConditional2
	clc
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional2.reentry:
	jc stream_operatorLESSERLESSER_stream_u64.elseif1
	# 
	stream_operatorLESSERLESSER_stream_u64.conditional1.reentry:
	mov %rdi, stream_lastWrittenStream
	mov %rdi, %rax
	jmp stream_operatorLESSERLESSER_stream_u64.epilogue
	stream_operatorLESSERLESSER_stream_u64.epilogue:
	add $48, %rsp
	ret
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional0:
		stc
		jmp stream_operatorLESSERLESSER_stream_u64.boolRetConditional0.reentry
	stream_operatorLESSERLESSER_stream_u64.if0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_u64
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		jmp stream_operatorLESSERLESSER_stream_u64.conditional1.reentry
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional1:
		stc
		jmp stream_operatorLESSERLESSER_stream_u64.boolRetConditional1.reentry
	stream_operatorLESSERLESSER_stream_u64.elseif0:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		xor %rdi, %rdi
		mov __fd_out, %rdi
		call __fd_operatorLESSERLESSER___fd_u64
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		jmp stream_operatorLESSERLESSER_stream_u64.conditional1.reentry
	stream_operatorLESSERLESSER_stream_u64.boolRetConditional2:
		stc
		jmp stream_operatorLESSERLESSER_stream_u64.boolRetConditional2.reentry
	stream_operatorLESSERLESSER_stream_u64.elseif1:
		mov %rdi, 0(%rsp)
		mov %rsi, 8(%rsp)
		mov %r8, 16(%rsp)
		mov %r9, 24(%rsp)
		mov %r10, 32(%rsp)
		xor %rdi, %rdi
		mov __fd_err, %rdi
		call __fd_operatorLESSERLESSER___fd_u64
		mov 0(%rsp), %rdi
		mov 8(%rsp), %rsi
		mov 16(%rsp), %r8
		mov 24(%rsp), %r9
		mov 32(%rsp), %r10
		jmp stream_operatorLESSERLESSER_stream_u64.conditional1.reentry

