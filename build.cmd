.\tools\cc1 -o kernel.gas kernel.c
.\tools\gas2nask kernel.gas kernel.nas
.\tools\nask kernel.nas kernel.obj kernel.lst
.\tools\obj2bim @./tools/haribote/haribote.rul out:kernel.bim stack:3136k map:kernel.map kernel.obj
.\tools\bim2hrb kernel.bim kernel.hrb 0

nasm loader.asm
copy /B loader+Kernel.hrb boot.img