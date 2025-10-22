section .data
  code:
    db '0123456789ABCDEF'

section .text
global _start
_start:
  ;numero 1122... em formato hexadecimal
  mov rax,0x1122334455667788
  
  mov rdi,1
  mov rdx,1
  mov rcx,64
  ;Cada 4 bits devem ser exibidos como um digito hexadecimal
  ;Use o descolamento (shift) e a peração bit a bit AND para isolá-los
  ;O resultado é o offset no array 'codes'
  ;
.loop:
  push rax
  sub rcx, 4
  ;cl é um registro, a parte menor de rcx
  ;rax -- eax -- ax -- ah + al
  ;rcx -- eax -- cx -- ch + cl
  sar rax, cl
  and rax, 0xf

  lea rsi, [code + rax]
  mov rax, 1

  ;syscall deixa rcx e r11 alterados
  push rcx
  syscall
  pop rcx

  pop rax
  ;test pode ser usado para uma verificação mais rápida do tipo 'é um zero ?'
  ;consulte a documentação do comando 'test'
  test rcx, rcx
  jnz .loop

  mov rax,60 ; faz o chamado do sistema 'exit'
  xor rdi,rdi
  syscall
