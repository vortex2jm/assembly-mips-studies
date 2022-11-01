.data
num: .float 0.0
one: .float 1.0
zero: .float 0.0
.text

#=========================#
reading_loading:
li $v0, 5
syscall
sw $v0, num
l.s $f2, num
cvt.s.w $f0, $f2
l.s $f8, one
l.s $f10, zero

#=========================#
pre_operation:
mov.s $f4, $f0
c.eq.s $f4, $f10
bc1t no_factorial
sub.s $f6, $f4, $f8

#=========================#
factorial:
c.eq.s $f6, $f10
bc1t factorial_done
mul.s $f4, $f4, $f6
sub.s $f6, $f6, $f8
j factorial

#=========================#
factorial_done:
li $v0, 2
mov.s $f12, $f4
syscall
li $v0, 10	# Syscall to exit
syscall

#=========================#
no_factorial:
mov.s $f12, $f8
li $v0, 2
syscall
