.data

msg1: .asciiz "Digite um valor inteiro: "

.text
li $s0, 0x00400000 

li $v0, 4 
la $a0, msg1 
syscall

li $v0, 5 
syscall 

addu $t0, $v0, $0 
sll $t0, $t0, 9 

li $v0, 1 
addu $a0, $t0, $0 
syscall

addu $ra, $0, $s0 
jr $ra 
