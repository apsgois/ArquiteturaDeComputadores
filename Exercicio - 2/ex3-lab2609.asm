.text 

# a , b e c 
li $t1, 1
li $t2, 2
li $t3, 3 

beq $t1, $t2, else
	add $t3, $t1, $t2
	sub $t1, $t2, $t3 
	j end 
else:
	add $t2, $t1, $t3
	sub $t3, $t2, $t3
end:


# 2 
bne   $t1, $t2, else
	add $t3, $t1, $t2
	sub $t1, $t2, $t3 
	j end 
else:
	add $t2, $t1, $t3
	sub $t3, $t2, $t3
end:

# 3 

bgt $t1, $t2, else
	add $t3, $t1, $t2
	sub $t1, $t2, $t3 
	j end 
else:
	sub $t2, $t1, $t3
	add $t3, $t2, $t3
end:

# 4

blt  $t1, $t2, else
	add $t3, $t1, $t2
	sub $t1, $t2, $t3 
	j end 
else:
	sub $t2, $t1, $t3
	add $t3, $t2, $t3
end:

# 5 

li $s0, 10
li $s1, 0 

while: 
	beqz $s0, end
	addi $s1, $s0, 5
	subi $s0, $s0, 1
	j while
end:

