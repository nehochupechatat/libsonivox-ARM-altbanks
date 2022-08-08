#
# Auto-generated sample makefile
#
# This makefile is intended for use with GNU make.
# Set the paths to the tools (CC, AR, LD, etc.)
#

vpath %.c %.h host_src 75k

CC = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-gcc.exe
AS = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-as.exe
LD = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-gcc.exe
AR = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-ar.exe

%.o: %.c
	$(CC) -c -O2 -o $@ -I host_src eas.h eas_build.h eas_chorus.h eas_config.h eas_debugmsgs.h eas_host.h eas_report.h eas_reverb.h eas_types.h eas_wave.h
	jet.h -D UNIFIED_DEBUG_MESSAGES -D EAS_WT_SYNTH -D _IMELODY_PARSER -D _RTTTL_PARSER -D _OTA_PARSER -D _XMF_PARSER -D _WAVE_PARSER -D _REVERB_ENABLED -D _CHORUS_ENABLED -D MMAPI_SUPPORT -D JET_INTERFACE $<

%.o: %.s
	$(AS) -o $@ -EL -mcpu=arm946e-s -mfpu=softfpa -I lib_src --defsym CHECK_STACK=0 --defsym REVERB=0 --defsym CHORUS=0 --defsym STEREO_OUTPUT=1 --defsym SAMPLE_RATE_22050=1 --defsym SAMPLES_8_BIT=1 --defsym FILTER_ENABLED=1 $<

OBJS = midi.a eas_main.o eas_report.o eas_wave.o eas_hostmm.o eas_config.o

arm-wt-22k: $(OBJS)
	$(LD) -o $@ $(OBJS) -lm

