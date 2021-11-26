# 8088-PC-Compatible
8088 PC Compatible
![alt text](/images/20211027_110916.jpg)

\
\
This is a repository for my 8088 PC Compatible project developed in 2021. The Motherboard is built to be generally PC XT compatible.

https://www.homebrew8088.com/

http://www.ebay.com/sch/emil6190/m.html

**Features:**\
-8088, NEC V20, OR NEC V40 Processor\
-512k RAM (This can be changed)\
-8 Bit ISA sockets (4 slots or 7 slots)\
-PC Speaker\
-USB "Hard Drive"\
-PS/2 Keyboard\
-ATX form factor\
-Add on DMA controller (7 slot ISA only) 

[My BIOS Files](https://github.com/homebrew8088/8088-PC-Compatible/tree/main/bios) are early versions and are very primitive.

The best BIOS to use is located at https://gitlab.com/hakfoo1/v40-bios. This works on the V20 and V40 just fine. You will need one of the earlier version if you are using an actual 8088 processor. This is due to some 80186 code that was included. 

You will find the [Keyboard Fix](https://github.com/homebrew8088/8088-PC-Compatible/tree/main/asm/keyboard%20fix) under asm. Add this to your autoexec.bat if your keyboard is not working after DOS boots up.

