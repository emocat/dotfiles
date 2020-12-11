#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright © %YEAR%-%MONTH% %USER%
# Distributed under terms of the %LICENSE% license.

from pwn import *

context.arch = 'amd64'
context.log_level = 'debug'
context.terminal = ['tmux', 'split', '-h']

RHOST = ""
RPORT = 0 

binary = ("./pwn")
elf = ELF(binary)
libc = elf.libc

if args['REMOTE']:
    r = remote(RHOST, RPORT)
elif args['GDB']:
    r = gdb.debug(binary)
else:
    r = process([binary])

%HERE%



r.interactive()
