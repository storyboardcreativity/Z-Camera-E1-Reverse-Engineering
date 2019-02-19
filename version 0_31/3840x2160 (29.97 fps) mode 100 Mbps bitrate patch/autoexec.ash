# [WORKS] change VBR max percent from average bitrate
writeb 0x04136E94 0xA0

# [WORKS] set 3840x2160 (29.97 fps) to VBR mode (VBR = 0x03, CBR = 0x01)
writeb 0x044CAF20 0x03

# [WORKS] set bitrate for 3840x2160 (29.97 fps) (MUST BE < 0x03E80000)
writel 0x044CAF00 0x03E7FFFF
