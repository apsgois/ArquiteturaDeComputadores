

#2 
.data
input_prompt:   .asciiz "Digite sua idade: "  
input_buffer:   .space 4                      

.text
.globl main

main:
    
    li $v0, 4
    la $a0, input_prompt
    syscall

    li $v0, 5           
    syscall
    move $t0, $v0      

    # Agora, $t0 contém a idade inserida pelo usuário
    li $t1, 30
    add $t2, $t0, $t1
    
    #Mostra o resultado
    li $v0, 1
    move $a0, $t2
    syscall
    .
    # Terminar o programa
    li $v0, 10          
    syscall
