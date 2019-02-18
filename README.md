# Z-Camera-E1-Reverse-Engineering
Here you can find my Z Camera E1 firmware reverse-engineering results.

# What hardware is used in camera?
E1 has Ambarella A9 SoC (from GoPro Hero 5 Black) and MN34230 sensor (from Panasonic GH4) on board.

# How it works?
At start E1 runs ThreadX RTOS. Then RTOS starts Linux (second OS for user interface).
RTOS does all work with hardware: SD Card I/O, H.264 DSP (hardware-accelerated encoding and decoding video), sensor reading, LCD I/O, etc.
Linux shows UI (UI is written on Qt), handles buttons and sends uplevel commands to RTOS through internal socket.

# What limitations does standard firmware have (0.31)?
1. Bitrates are fixed and all below or equal 60 Mbps. Even bitrate in 4K DCI 24p mode equals 60 Mbps.
2. There's no MJPEG capture mode.
3. Fixed H.264 GOP structure for each single capturing mode.
4. Chroma subsampling is 4:2:0.
5. Pixel bit depth for video is 24 bpp (R = 8, G = 8, B = 8), but sensor captures at 30 bpp (R = 10, G = 10, B = 10).

# How to apply patch from this repository?
Each patch is an "autoexec.asc" file. You just place it on the root of your micro-sd card and start E1 with this micro-sd card in it. Patch is applied automatically. If you want to disable patch - just remove "autoexec.asc" from your micro-sd card.

# What if I need to use several patches at the same time?
If you need 2 or more patches at the same time, just create you own "autoexec.asc" and copy to it all text from patches you want.
