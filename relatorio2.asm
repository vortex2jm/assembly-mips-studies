.data

var1: .word 0x01	#salvando o valor 1 em var1
var2: .word 0x02        #salvando o valor 2 em var2
var3: .word 0x03	#salvando o valor 3 em var3
var4: .word 0x04	#salvando o valor 4 em var4
primeiro: .byte 'J'	#salvando a primeira letra do meu nome em 'primeiro'
ultimo: .byte 'S'	#salvando a ultima letra do meu nome em 'ultimo'

.text
lw $t0, var1		#carregando o valor de var1 no registrador $t0
lw $t1, var4		#carregando o valor de var4 no registrador $t1
sw $t0, var4		#salvando o valor que está no registrador $t0 em var4
sw $t1, var1		#salvando o valor que está no registrador $t1 em var1

lw $t0, var2		#Mesmo procedimento, porém com as variáveis var2 e var3
lw $t1, var3		
sw $t0, var3
sw $t1, var2

li $v0, 1
lw $a0, 0x10010000
syscall

li $v0, 1
lw $a0, 0x10010004
syscall

li $v0, 1
lw $a0, 0x10010008
syscall

li $v0, 1
lw $a0, 0x1001000c
syscall

li $v0, 11
lw $a0, 0x10010010
syscall
