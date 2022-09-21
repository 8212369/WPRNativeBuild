cmake_minimum_required(VERSION 3.0.0)
project(WPRBuildNative)

message("Starting")

add_definitions(-DFAUDIO_DISABLE_DEBUGCONFIGURATION)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib/${CMAKE_ANDROID_ARCH_ABI})

add_subdirectory(SDL)
add_subdirectory(FAudio)
add_subdirectory(FNA3D)

add_library(theorafile
    theorafile/theorafile.c
    theorafile/lib/ogg/bitwise.c
    theorafile/lib/ogg/framing.c
    theorafile/lib/theora/apiwrapper.c
    theorafile/lib/theora/bitpack.c
    theorafile/lib/theora/cpu.c	
    theorafile/lib/theora/decapiwrapper.c
    theorafile/lib/theora/decinfo.c
    theorafile/lib/theora/decode.c	
    theorafile/lib/theora/dequant.c
    theorafile/lib/theora/fragment.c
    theorafile/lib/theora/huffdec.c
    theorafile/lib/theora/idct.c	
    theorafile/lib/theora/internal.c
    theorafile/lib/theora/quant.c	
    theorafile/lib/theora/state.c	
    theorafile/lib/theora/tinfo.c	
    theorafile/lib/vorbis/analysis.c
    theorafile/lib/vorbis/bitrate.c
    theorafile/lib/vorbis/block.c
    theorafile/lib/vorbis/codebook.c
    theorafile/lib/vorbis/envelope.c
    theorafile/lib/vorbis/floor0.c
    theorafile/lib/vorbis/floor1.c
    theorafile/lib/vorbis/vinfo.c
    theorafile/lib/vorbis/lookup.c
    theorafile/lib/vorbis/lpc.c
    theorafile/lib/vorbis/lsp.c
    theorafile/lib/vorbis/mapping0.c
    theorafile/lib/vorbis/mdct.c
    theorafile/lib/vorbis/psy.c
    theorafile/lib/vorbis/registry.c
    theorafile/lib/vorbis/res0.c
    theorafile/lib/vorbis/sharedbook.c
    theorafile/lib/vorbis/smallft.c
    theorafile/lib/vorbis/synthesis.c
    theorafile/lib/vorbis/window.c)
	
target_include_directories(theorafile PUBLIC theorafile theorafile/lib)
