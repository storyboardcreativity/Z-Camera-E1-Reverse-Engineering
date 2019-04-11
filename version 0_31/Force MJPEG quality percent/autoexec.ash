# Force MJPEG quality (percent from 0 to 100)
# Use hexademical percent value
# Example:
# 0% => 0x00000000
# 10% => 0x0000000A
# 100% => 0x00000064
# 50% => 0x00000032
writel 0x045F237C 0x00000032
