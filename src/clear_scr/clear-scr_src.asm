; Copyright (c) 2025, London Sheard
; Licensed under the BSD 3-Clause License.
; See the LICENSE file for details.

global _start

section .data
  clearCode: db 0x1B, '[', '2', 'J', 0x1B, '[', 'H' ; escape sequence
  len_clearCode: equ $-clearCode ; sequence length

section .text

  _start:
  ;start clear_scr
  mov rax, 1 ; syswrite
  mov rdi, 1 ; stdout
  mov rsi, clearCode
  mov rdx, len_clearCode
  syscall
  ;end clear_scr

  ;start exit
  mov rax, 60 ; sysexit
  mov rdi, 0 ; exit 0
  syscall
  ;end exit
