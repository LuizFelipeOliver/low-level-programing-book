; rsi <- endereço do rótulo 'codes', um número
mov rsi, codes

;rsi <- conteúdo da memória, começando no endereço 'codes'
;8 bytes consecutivos são obtidos por que o tamanho de rsi é de 8 bytes
mov rsi,[codes]
;rsi <- endereço de 'codes'
;neste caso, é equivalente a mov rsi, codes
;em geral, o endereço pode conter vários componentes
lea rsi,[codes]

;rsi <- conteúdo da memória, começando em (codes+rax)
mov rsi, [codes + rax]

;rsi <- codes + rax
;equivalente á combinação:
;     mov rsi,codes
;     add rsi,rax
;Não é possivel fazer isso com um único mov!
lead rsi,[codes + rax]
