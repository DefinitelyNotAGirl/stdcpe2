c2 = ./../c+=2/cp2

STARTDIR=start

SOURCE_assembly_i86=$(wildcard src/*.i86)
SOURCE_assembly_i86+=$(wildcard src/$(STARTDIR)/*.i86)
OBJECTS_assembly_i86=$(patsubst src/%.i86,build/%.o,$(SOURCE_assembly_i86))
DEPFILES_assembly_i86=$(patsubst src/%.i86,build/%.d,$(SOURCE_assembly_i86))
SOURCE_assembly_a86=$(wildcard src/*.a86)
SOURCE_assembly_a86+=$(wildcard src/$(STARTDIR)/*.a86)
OBJECTS_assembly_a86=$(patsubst src/%.a86,build/%.o,$(SOURCE_assembly_a86))
DEPFILES_assembly_a86=$(patsubst src/%.a86,build/%.d,$(SOURCE_assembly_a86))
SOURCE_c2_c2=$(wildcard src/*.c2)
SOURCE_c2_c2+=$(wildcard src/$(STARTDIR)/*.c2)
OBJECTS_c2_c2=$(patsubst src/%.c2,build/%.o,$(SOURCE_c2_c2))
DEPFILES_c2_c2=$(patsubst src/%.c2,build/%.d,$(SOURCE_c2_c2))
SOURCE_c2_cp2=$(wildcard src/*.cp2)
SOURCE_c2_cp2+=$(wildcard src/$(STARTDIR)/*.cp2)
OBJECTS_c2_cp2=$(patsubst src/%.cp2,build/%.o,$(SOURCE_c2_cp2))
DEPFILES_c2_cp2=$(patsubst src/%.cp2,build/%.d,$(SOURCE_c2_cp2))

C2ARGS=
ASARGS=

all: stdlib

build/%.o: src/%.i86
	@$(AS) $(ASARGS) --gstabs -MD -c -o $@ $<
	$(info  	$(AS)	$<)
build/%.o: src/%.a86
	@$(AS) $(ASARGS) --gstabs -MD -c -o $@ $<
	$(info  	$(AS)	$<)
build/%.o: src/%.c2 $(c2)
	@$(c2) $(C2ARGS) -MD -Bbuild -Ddocumentation -Iinc --fno-libc -S -c -NOD $<
	$(info  	$(c2)	$<)
build/%.o: src/%.cp2 $(c2)
	@$(c2) $(C2ARGS) -MD -Bbuild -Ddocumentation -Iinc --fno-libc -S -c $<
	$(info  	$(c2)	$<)
clean:
	@-rm -r build/*.o
	@-rm -r build/$(STARTDIR)/*.o
	$(info  	DELETE	build/*.o)
	$(info  	DELETE	build/$(STARTDIR)/*.o)
	@-rm -r build/*.d
	@-rm -r build/$(STARTDIR)/*.d
	$(info  	DELETE	build/*.d)
	$(info  	DELETE	build/$(STARTDIR)/*.d)

stdlib:  $(OBJECTS_assembly_i86) $(OBJECTS_assembly_a86) $(OBJECTS_c2_cp2) $(OBJECTS_c2_c2)
	@$(AR) r libcpe2.a $(OBJECTS_assembly_i86) $(OBJECTS_assembly_a86) $(OBJECTS_c2_cp2) $(OBJECTS_c2_c2)
	$(info  	$(AR)	$@)

countLines:
	@find src inc -type f \( -iname \*.c2 -o -iname \*.cp2 -o -iname \*.i86 -o -iname \*.a86 \) -exec cat {} \; | wc -l

listCodeFiles:
	@find src inc -type f \( -iname \*.c2 -o -iname \*.cp2 -o -iname \*.i86 -o -iname \*.a86 \) -print

-include $(DEPFILES_assembly_i86)
-include $(DEPFILES_assembly_a86)
-include $(DEPFILES_c2_c2)
-include $(DEPFILES_c2_cp2)

install-linux:
	@-mkdir /usr/local/lib/cpe2 &> /dev/null
	cp build/start/crt0.o /usr/local/lib/cpe2
	cp build/start/crtsig.o /usr/local/lib/cpe2
	cp build/start/exit.o /usr/local/lib/cpe2
	cp libcpe2.a /usr/lib
	cp -R inc/* /usr/local/include/cpe2/
