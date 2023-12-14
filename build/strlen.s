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
.extern u64_strlen_charP8
.extern u64_strcpy_charP8_charP8
.global u64_strlen_charP8

.data

.section .rodata

.bss

.text
u64_strlen_charP8:
	xor %rax, %rax
	u64_strlen_charP8.while0.reentry:
	cmpb $0,(%rdi,%rax)
	jne u64_strlen_charP8.boolRetConditional0
	clc
	u64_strlen_charP8.boolRetConditional0.reentry:
	jc u64_strlen_charP8.while0
		u64_strlen_charP8.epilogue:
		ret
	u64_strlen_charP8.boolRetConditional0:
		stc
		jmp u64_strlen_charP8.boolRetConditional0.reentry
	u64_strlen_charP8.while0:
		inc %rax
		jmp u64_strlen_charP8.while0.reentry

