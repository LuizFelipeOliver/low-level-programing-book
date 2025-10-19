global _start

;defino variavel
section  .data
    ;db = define byte / 10 = \n
    message: db 'hello, word!',10

section .text
_start:
  mov   rax,1        ;armgumento para executra o syscall
  mov   rdi,1        ;informo para enviar para o stdout
  mov   rsi,message  ;aponto para o endereço onde esta armazenado a mensagem
  mov   rdx,14       ;informo a quantidades de bytes
  syscall            ;chamo o syscall

;codigo para terminar o programa
  mov   rax,60       ;chamada para sair do syscall
  xor   rdi,rdi      ;reseta o valores do bytes
  syscall
