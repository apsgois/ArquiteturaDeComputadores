#1 - Deslocamento a direita em 8 bits para cada 

# 1 - 10 
li $t0, 10 
srl $t0, $t0, 8 

# 2 - 25 
li $t1, 25
srl $t1, $t1, 8

#3 - 43 
li $t2, 43
srl $t2, $t2, 8

#4 - 89
li $t3, 89
srl $t3, $t3, 8

#2 - Deslocamento a esquerda em 4 bits para cada 
# 1 - 10 
li $t0, 10 
sll $t0, $t0, 4

# 2 - 25 
li $t1, 25
sll $t1, $t1, 4

#3 - 43 
li $t2, 43
sll $t2, $t2, 4

#4 - 89
li $t3, 89
sll $t3, $t3, 4

# 2 - Operação logica AND
li $t4, 324 
li $t5, 100
and $t6, $t4, $t5

# 2 - 2018 and 1970 
li $t7, 2018
li $s0, 1970
and $s1, $t7, $s0

# 3 - 33 and 66 
li $s2, 2018
li $s3, 1970
and $s4, $s2, $s3

# Aplicando a logica OR 

# 1 - 324 or 100 
or $s5, $t4, $t5

# 2 - 2018 or 1970 
or $s6, $t7, $s0

# 3 - 33 or 66 
or $s6, $t7, $s0

# Aplicando a logica NOR
nor  $s5, $t4, $t5

# 2 - 2018 or 1970 
nor $s6, $t7, $s0

# 3 - 33 or 66 
nor $s6, $t7, $s0



  



