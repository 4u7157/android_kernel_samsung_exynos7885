cmd_arch/arm64/kernel/vdso/built-in.o :=  aarch64-linux-android-ld -EL    -r -o arch/arm64/kernel/vdso/built-in.o arch/arm64/kernel/vdso/vdso.o ; scripts/mod/modpost arch/arm64/kernel/vdso/built-in.o
