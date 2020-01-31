#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright © %YEAR% %USER%

from pwn import *
context.arch = 'amd64'
context.log_level = "debug"
context.terminal = ['tmux', 'split', '-h']

pwn_file = ("./pwn")
elf = ELF(pwn_file)
libc = ELF("./bc.so.6")

if len(sys.argv) == 1:
    r = process(pwn_file)
    pid = r.pid
else:
    r = remote("pwn.it", 3333)
    pid = 0

def debug():
    gdb.attach(r)

%HERE%



r.interactive()
