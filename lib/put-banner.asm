global put_startBanner
global put_endBanner

section .data
  startBanner: db "=== Welcome ===", 10
  LENstartBanner: equ $-startBanner
  endBanner: db "=== Goodbye ===", 10
  LENendBanner: equ $-endBanner

section .text
  put_startBanner:
    ;start display start banner
    mov rax, 1 ; syswrite
    mov rdi, 1 ; stdout
    mov rsi, startBanner
    mov rdx, LENstartBanner
    syscall
    ret
    ;end display start banner

  put_endBanner:
    ;start display end banner
    mov rax, 1 ; syswrite
    mov rdi, 1 ; stdout
    mov rsi, endBanner
    mov rdx, LENendBanner
    syscall
    ret
    ;end display end banner
