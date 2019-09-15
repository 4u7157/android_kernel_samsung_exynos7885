cmd_init/_uh.o := aarch64-linux-android-gcc -Wp,-MD,init/._uh.o.d  -nostdinc -isystem /home/kapmino269/Downloads/SM-A305F_SWA_PP_Opensource/PLATFORM/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9.x-google/include -I./arch/arm64/include -Iarch/arm64/include/generated/uapi -Iarch/arm64/include/generated  -Iinclude -I./arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian   -D__ASSEMBLY__ -fno-PIE  -DCC_HAVE_ASM_GOTO -Wa,-gdwarf-2            -c -o init/_uh.o init/_uh.S

source_init/_uh.o := init/_uh.S

deps_init/_uh.o := \
  include/linux/uh.h \
    $(wildcard include/config/knox/kap.h) \

init/_uh.o: $(deps_init/_uh.o)

$(deps_init/_uh.o):
