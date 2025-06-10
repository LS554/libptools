global stringlen

section .data
  string: db "Hello, World!", 0 ; string 

section .text

stringlen:
;start find string length
xor rax, rax ; (efficient) set counter to 0

;start loop
.loop:
  cmp byte [rdi + rax], 0 ; compare current byte at (string + counter) to 0
  je .done ; jump if end of string  

  inc rax ; inc counter 
  jmp .loop 

;when done
.done:
  ret
;end find string length
