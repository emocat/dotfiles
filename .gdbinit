set history save on
set history size 10000
set history filename ~/.gdb_history

source ~/.pwndbg/gdbinit.py
source ~/.Pwngdb/pwngdb.py
source ~/.Pwngdb/angelheap/gdbinit.py

define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end


#set auto-load safe-path /
