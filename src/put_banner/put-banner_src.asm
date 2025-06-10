; Copyright (c) 2025, London Sheard
; Licensed under the BSD 3-Clause License.
; See the LICENSE file for details.

global _start

section .data
  banner: db "=== Welcome ===", 10
  lenBanner: equ $-banner

section .text
  _start:
    ;start display banner
    mov rax, 1 ; syswrite
    mov rdi, 1 ; stdout
    mov rsi, banner
    mov rdx, lenBanner
    syscall
    ;end display banner

    ;start exit
    mov rax, 60 ; sysexit
    mov rdi, 0 ; return 0
    syscall
