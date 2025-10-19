section .data
    example1: db 5, 16, 8, 4, 2, 1   ;definido 6 bytes na memória
    example2: times 999 db 42        ;cria 999 bytes com o valor de 42
    example3: dw 999                 ;permite aramagenar valores maiores que 1 byte
