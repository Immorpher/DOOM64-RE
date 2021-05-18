export CFLAGS="-std=gnu99 -mips3 -O0 -mfix4300 -ftree-switch-conversion -ffinite-loops -ftree-dominator-opts -ftree-dse -ftree-ch -ftree-loop-optimize -ftree-scev-cprop -ftree-dce -fipa-cp -fipa-bit-cp -fipa-vrp -ftree-pre -fexpensive-optimizations -falign-functions -falign-jumps -falign-labels -falign-loops -freorder-blocks -fforward-propagate -fguess-branch-probability -fdce -fdelayed-branch -fschedule-insns -fcode-hoisting -G0 -ffreestanding -fno-PIC -mabi=32 -mgp32 -mfp32 -mno-shared -mno-abicalls -march=vr4300 -mtune=vr4300 -funsigned-char -D_LANGUAGE_C -D_ULTRA64 -D__EXTENSIONS__  -DNDEBUG -D_FINALROM -DF3DEX_GBI_2 -I. -I./ultra/usr/include/PR  -I./ultra/usr/include"
mv WESSLIB.o WESSLIB.n
rm *.o
mv WESSLIB.n WESSLIB.o
#rm doom64.n64
#rm doom64.z64
#rm doom64.out
$N64_INST/bin/mips64-elf-gcc.exe -mips3 -O0 -G0 -ffreestanding -fno-PIC -mabi=32 -mno-shared -mno-abicalls -march=vr4300 -mtune=vr4300 -funsigned-char -D_ULTRA64 -D__EXTENSIONS__  -DNDEBUG -D_FINALROM -DF3DEX_GBI_2 -I. -I./ultra/usr/include/PR  -I./ultra/usr/include  -c d_memset.S -o d_memset.o 
$N64_INST/bin/mips64-elf-gcc.exe -mips3 -O0 -G0 -ffreestanding -fno-PIC -mabi=32 -mno-shared -mno-abicalls -march=vr4300 -mtune=vr4300 -funsigned-char -D_ULTRA64 -D__EXTENSIONS__  -DNDEBUG -D_FINALROM -DF3DEX_GBI_2 -I. -I./ultra/usr/include/PR  -I./ultra/usr/include  -c d_memcpy.S -o d_memcpy.o 
$N64_INST/bin/mips64-elf-gcc.exe -mips3 -O0 -G0 -ffreestanding -fno-PIC -mabi=32 -mno-shared -mno-abicalls -march=vr4300 -mtune=vr4300 -funsigned-char -D_ULTRA64 -D__EXTENSIONS__  -DNDEBUG -D_FINALROM -DF3DEX_GBI_2 -I. -I./ultra/usr/include/PR  -I./ultra/usr/include  -c m_fixed.S -o m_fixed.o 
#exit 0
#$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c m_fixed.c -o m_fixed.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c graph.c -o graph.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c asci.c -o asci.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c doominfo.c -o doominfo.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c sprinfo.c -o sprinfo.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c m_bbox.c -o m_bbox.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c am_main.c -o am_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c doomlib.c -o doomlib.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c vsprintf.c -o vsprintf.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c c_convert.c -o c_convert.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c d_main.c -o d_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c f_main.c -o f_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c g_game.c -o g_game.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c in_main.c -o in_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c m_fixed.c -o m_fixed.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c i_main.c -o i_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c m_main.c -o m_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c m_password.c -o m_password.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_base.c -o p_base.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_misc.c -o p_misc.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_telept.c -o p_telept.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_ceilng.c -o p_ceilng.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_change.c -o p_change.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_doors.c -o p_doors.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_enemy.c -o p_enemy.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_floor.c -o p_floor.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_inter.c -o p_inter.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_lights.c -o p_lights.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_map.c -o p_map.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_slide.c -o p_slide.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_shoot.c -o p_shoot.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_maputl.c -o p_maputl.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_mobj.c -o p_mobj.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_move.c -o p_move.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_plats.c -o p_plats.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_pspr.c -o p_pspr.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_setup.c -o p_setup.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_sight.c -o p_sight.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_spec.c -o p_spec.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_macros.c -o p_macros.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_switch.c -o p_switch.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_tick.c -o p_tick.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c p_user.c -o p_user.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c r_data.c -o r_data.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c r_main.c -o r_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c r_phase1.c -o r_phase1.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c r_phase2.c -o r_phase2.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c r_phase3.c -o r_phase3.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c s_sound.c -o s_sound.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c st_main.c -o st_main.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c d_screens.c -o d_screens.o 
#$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c w_wad.c -o w_wad.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c z_zone.c -o z_zone.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c decodes.c -o decodes.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c tables.c -o tables.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c audio.c -o audio.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessshell.c -o wessshell.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wesstwek.c -o wesstwek.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapi.c -o wessapi.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapic.c -o wessapic.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapic.c -o wessapim.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapic.c -o wessapic.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapim.c -o wessapim.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapip.c -o wessapip.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessapit.c -o wessapit.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wesshand.c -o wesshand.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wesstrak.c -o wesstrak.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessedit.c -o wessedit.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessarc.c -o wessarc.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c funqueue.c -o funqueue.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessfade.c -o wessfade.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c wessseq.c -o wessseq.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c n64cmd.c -o n64cmd.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c seqload.c -o seqload.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c seqloadl.c -o seqloadl.o 
$N64_INST/bin/mips64-elf-gcc.exe $CFLAGS  -c seqloadr.c -o seqloadr.o 
