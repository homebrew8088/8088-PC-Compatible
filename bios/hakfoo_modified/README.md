# Hakfoo's BIOS 
Hakfoo's BIOS 

This is a modifed version of hakfoo's V40 BIOS. This will work with a V40, V20, and 8088.

This requires a graphics card to boot up. 

The only change I made is the CH376 reset timing. I changed WAIT_3 to WAIT_8. The V20 was not able to reset the CH376 with the shorter wait.

**Source Code**\
https://gitlab.com/hakfoo1/v40-bios

