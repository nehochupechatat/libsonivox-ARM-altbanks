These folders contain alternate builds of the Sonivox EAS library with special soundbanks not included in the AOSP codebase.
Unfortunately, I don't have source code, only prebuilt .a binary blobs with some debug symbols.
The architecture is 32-bit little endian ARM.

TODO:
The challenge would be to link these libs against the "host_src" of the AOSP Sonivox code and generate a MIDI-to-WAV ARM linux executable