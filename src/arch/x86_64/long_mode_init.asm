; Copyright 2015 Philipp Oppermann. See the README.md
; file at the top-level directory of this distribution.
;
; Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
; http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
; <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
; option. This file may not be copied, modified, or distributed
; except according to those terms.

global long_mode_start

section .text
bits 64
long_mode_start:
    ; print `OKAY` to screen
    mov rax, 0x2f592f412f4b2f4f
    mov qword [0xb8000], rax
    hlt
