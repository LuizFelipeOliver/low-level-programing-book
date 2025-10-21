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

