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
.global u64_write___fd_u64_u64
.global u64_write___fd_charP8_u64

.data

.section .rodata

.bss

.text
u64_write___fd_u64_u64:
	xor %rax, %rax
	mov $1, %rax
	syscall
	u64_write___fd_u64_u64.epilogue:
	ret

u64_write___fd_charP8_u64:
	xor %rax, %rax
	mov $1, %rax
	syscall
	u64_write___fd_charP8_u64.epilogue:
	ret

