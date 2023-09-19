
                   
#3
.text
.globl main

main:
	li $t1, 54
	li $t2, 45
	add $t3, $t1, $t2
	li $v0, 1
   	move $a0, $t3
    	syscall 
    	
    	li $v0, 10          
    	syscall
     
  