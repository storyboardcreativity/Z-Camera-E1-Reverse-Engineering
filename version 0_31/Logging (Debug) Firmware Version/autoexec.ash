# [DSP] enable all threads debug messages
t dsp dbgthd 0

# [DSP] print default command buffer to syslog mechanism
t dsp def_cmd_buf on

# [DSP] print vdsp command buffer to syslog mechanism
t dsp vdsp_cmd_buf on

# [DSP] print vcap command buffer to syslog mechanism
t dsp vcap_cmd_buf on

# [DSP] print async command buffer to syslog mechanism
t dsp async_cmd_buf on

# [DSP] set log level for all modules
t dsp debug 255 255

# [SysLog] enable
t syslog on

# RTOS message ON
dmesg rtos on

# DSP message ON
dmesg dsp on
