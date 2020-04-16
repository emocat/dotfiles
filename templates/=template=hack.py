#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright © %YEAR%-%MONTH% %USER%
# Distributed under terms of the %LICENSE% license.

from pwn import *
context.arch = 'amd64'
context.log_level = "debug"
context.terminal = ['tmux', 'split', '-h']

binary = ("./pwn")
elf = ELF(binary, checksec=False)
libc = elf.libc

if not args['REMOTE']:
    r = process(binary)
else:
    r = remote("pwn.it", 3333)

def debug():
    gdb.attach(r)

%HERE%



r.interactive()
