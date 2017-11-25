.data

L1: .asciiz "Numero 1: "
L2: .asciiz "Numero 2: "
L3: .asciiz "Resultado: "


.text


main: addi $v0,$zero,4   #Prepara para imprimir uma string
      la $a0, L1	 #Imprime uma string na variavel L1
      syscall		 #Chama a chamada do sistema
      addi $v0,$zero,5   #Prepara para receber numero 1 
      syscall		 #Chama a chamada do sistema    
      add $s0,$zero,$v0  #Coloca o numero recebido no registrador $s0
      addi $v0,$zero,4   #Prepara para imprimir uma string
      la $a0, L2	 #Imprime uma string na variavel L2
      syscall		 #Chama a chamada do sistema
      addi $v0,$zero,5   #Prepara para receber numero 2
      syscall		 #Chama a chamada do sistema
      add $s1,$zero,$v0  #Coloca o numero recebido no registrador $s1
    
      addi $v0,$zero,4   #Prepara para imprimir uma string
      la $a0, L3	 #Imprime uma string na variavel L3
      syscall		 #Chama a chamada do sistema
      add $a0,$s0,$s1 	 #Soma o numero no registrador $s0 com o numero no registrador $s1 e coloca no registrador $a0 para a imprimir-lo
      addi $v0,$zero,1   #Prepara para imprimir o resultado
      syscall		 #Chama a chamada do sistema
      jr $ra
