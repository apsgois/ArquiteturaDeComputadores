.data 
a: .word 1,2,3,4,5,6,7,8,9,0
b: .word 
c: .word 1,2,3,4,5,6,7,8,9,0
# a[10] = b -c 
.text
	la $s1, a
	li $t1, 150 # b
	li $t2, 200 #c
	sub $t3, $t1, $t2
	sw $t3, 40($s1)
#b[245] = a +c 
	la $s1, b
	li $t1, 150 # a
	li $t2, 200 #b
	add $t3, $t1, $t2
	sw $t3, 980($s1)
#c[0]= b- a 
	la $s1, c
	li $t1, 150 # b
	li $t2, 200 #a
	sub $t3, $t1, $t2
	sw $t3, 0($s1)
	
# 2 - Converter as instruções abaixo:
a: .word 
b: .word
c: .word
# 1 -> a = b[15] -c 
	la $s1, b
	lw $t0, 60($s1)
	li $t2, 200 #c
	sub $t3, $t0, $t2

# 2 -> b = a[5] + c[3]
	la $s1, a
	la $s2, b
	lw $t0, 20($s1)
	lw $t1, 12($s2)
	add $t3, $t0, $t1

# 3 -> c = b -a[21]
	la $s1, a
	lw $t0, 84($s1)
	li $t2, 200 #b
	sub $t3, $t2, $t0


# 3 

.data 
a: .word 4,5

.text 
	la $s1, a
	lw $t0, 0($s1)
	li $s0, 0 # J 
	blt $t0, 5, menor 
	addi $s0, $t0, 10
	
menor: 
	add $t0, $s0, 2
	





