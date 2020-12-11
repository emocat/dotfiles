#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright © %YEAR%-%MONTH% %USER%
# Distributed under terms of the %LICENSE% license.

from pwn import *
context.arch = 'amd64'
context.log_level = "debug"
context.terminal = ['tmux', 'split', '-h']

RHOST = ""
RPORT = 0 

binary = ("./pwn")
elf = ELF([binary])
libc = elf.libc

if not args['REMOTE']:
    r = process(binary)
else:
    r = remote(RHOST, RPORT)

def debug():
    if len(sys.argv) > 1 and sys.argv[1] == 'd':
        gdb.attach(r, "")

%HERE%



r.interactive()
