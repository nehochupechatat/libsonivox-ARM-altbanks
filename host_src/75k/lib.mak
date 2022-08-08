#
# Auto-generated sample makefile
#
# This makefile is intended for use with GNU make.
# Set the paths to the tools (CC, AR, LD, etc.)
#

vpath %.c 75k

CC = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-gcc.exe
AS = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-as.exe
LD = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-gcc.exe
AR = C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2021.10\bin\arm-none-eabi-ar.exe

%.o: %.c
	$(CC) -c -O2 -o $@ -I lib_src -I host_src -D NUM_OUTPUT_CHANNELS=2 -D _SAMPLE_RATE_22050 -D MAX_SYNTH_VOICES=64 -D EAS_WT_SYNTH -D _8_BIT_SAMPLES -D _FILTER_ENABLED -D _IMELODY_PARSER -D _RTTTL_PARSER -D _OTA_PARSER -D _XMF_PARSER -D _WAVE_PARSER -D _REVERB_ENABLED -D _CHORUS_ENABLED -D DLS_SYNTHESIZER -D _IMA_DECODER -D MMAPI_SUPPORT -D NATIVE_EAS_KERNEL -D JET_INTERFACE $<

%.o: %.s
	$(AS) -o $@ -EL -mcpu=arm946e-s -mfpu=softfpa -I lib_src --defsym CHECK_STACK=0 --defsym REVERB=0 --defsym CHORUS=0 --defsym STEREO_OUTPUT=1 --defsym SAMPLE_RATE_22050=1 --defsym SAMPLES_8_BIT=1 --defsym FILTER_ENABLED=1 $<

OBJS = 75k_8b_22k_128.o eas_config.o eas_data.o eas_enhancer.o eas_enhdata.o eas_flog.o eas_hostmm.o eas_math.o eas_midi.o eas_mididata.o eas_mixbuf.o eas_mixer.o eas_pan.o eas_pcm.o eas_pcmdata.o eas_public.o eas_report.o eas_smf.o eas_smfdata.o eas_tcdata.o eas_tonecontrol.o eas_voicemgt.o eas_wtengine.o eas_wtsynth.o

midi.a: $(OBJS)
	$(AR) rc lib$@ $(OBJS)

