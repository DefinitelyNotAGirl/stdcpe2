c2 = ./../c+=2/cp2

test:
	$(c2) src/ex1.c2 -builddir build -docdir documentation -I inc -S --info variables,functions,classes:c++,html

install-linux:
	
