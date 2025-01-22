OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(bl1_entrypoint)
MEMORY {
    ROM (rx): ORIGIN = 0x0, LENGTH = 0x400
    SRAM (rx): ORIGIN = 0x2001FE00, LENGTH = 0x200
    DRAM (rx): ORIGIN = 0x70180000 + 0x20, LENGTH = (0x70180000 + (0x20000)) - 0x70180000 - 0x20
    RAM (rwx): ORIGIN = ((0x70180000 + (0x20000))), LENGTH = (((0x70180000 + (0x20000))) + (0x10000)) - ((0x70180000 + (0x20000)))
}
SECTIONS
{
    .boot_rom . : {
        KEEP(*bl1_entrypoint_rom.o(.text*))
        . = ALIGN(32);
     } >ROM
    .boot_sram : {
        KEEP(*bl1_entrypoint_sram.o(.text*))
        . = ALIGN(32);
     } >SRAM
    . = 0x70180000 + 0x20;
    .text . : {
        __TEXT_START__ = .;
        *bl1_entrypoint.o(.text*)
        *(SORT_BY_ALIGNMENT(.text*))
        *(.vectors)
        . = ALIGN(((1) << (12)));
        __TEXT_END__ = .;
     } >DRAM
     .ARM.extab . : {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
     } >DRAM
     .ARM.exidx . : {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
     } >DRAM
    .rodata . : {
        __RODATA_START__ = .;
        *(SORT_BY_ALIGNMENT(.rodata*))
 . = ALIGN(4); __RT_SVC_DESCS_START__ = .; KEEP(*(rt_svc_descs)) __RT_SVC_DESCS_END__ = .; . = ALIGN(4); __FCONF_POPULATOR_START__ = .; KEEP(*(.fconf_populator)) __FCONF_POPULATOR_END__ = .; . = ALIGN(4); __PMF_SVC_DESCS_START__ = .; KEEP(*(pmf_svc_descs)) __PMF_SVC_DESCS_END__ = .; . = ALIGN(4); __PARSER_LIB_DESCS_START__ = .; KEEP(*(.img_parser_lib_descs)) __PARSER_LIB_DESCS_END__ = .; . = ALIGN(4); __CPU_OPS_START__ = .; KEEP(*(cpu_ops)) __CPU_OPS_END__ = .; . = ALIGN(4); __GOT_START__ = .; *(.got) __GOT_END__ = .;
        __RODATA_END__ = .;
         . = ALIGN(16);
    } >DRAM
    ASSERT(__CPU_OPS_END__ > __CPU_OPS_START__,
           "cpu_ops not defined for this platform.")
    . = ((0x70180000 + (0x20000)));
    ASSERT(((0x70180000 + (0x20000))) == ALIGN(((1) << (12))),
           "BL1_RW_BASE address is not aligned on a page boundary.")
    .data . : ALIGN(16) {
        __DATA_RAM_START__ = .;
        *(SORT_BY_ALIGNMENT(.data*))
        __DATA_RAM_END__ = .;
    } >RAM AT>DRAM
    stacks . (NOLOAD) : {
        __STACKS_START__ = .;
        *(tzfw_normal_stacks)
        __STACKS_END__ = .;
    } >RAM
    .bss (NOLOAD) : ALIGN(8) { __BSS_START__ = .; *(SORT_BY_ALIGNMENT(.bss*)) *(COMMON) . = ALIGN((1 << 6)); __PMF_TIMESTAMP_START__ = .; KEEP(*(pmf_timestamp_array)) . = ALIGN((1 << 6)); __PMF_PERCPU_TIMESTAMP_END__ = .; __PERCPU_TIMESTAMP_SIZE__ = ABSOLUTE(. - __PMF_TIMESTAMP_START__); . = . + (__PERCPU_TIMESTAMP_SIZE__ * ((1 * 2) - 1)); __PMF_TIMESTAMP_END__ = .; . = ALIGN(16); *(base_xlat_table) __BSS_END__ = .; } >RAM
    xlat_table (NOLOAD) : { *(xlat_table) } >RAM
    coherent_ram (NOLOAD) : ALIGN(((1) << (12))) {
        __COHERENT_RAM_START__ = .;
        *(tzfw_coherent_mem)
        __COHERENT_RAM_END_UNALIGNED__ = .;
        . = ALIGN(((1) << (12)));
        __COHERENT_RAM_END__ = .;
    } >RAM
    __BL1_RAM_START__ = ADDR(.data);
    __BL1_RAM_END__ = .;
    __DATA_ROM_START__ = LOADADDR(.data);
    __DATA_SIZE__ = SIZEOF(.data);
    __BL1_ROM_END__ = __DATA_ROM_START__ + __DATA_SIZE__;
    ASSERT(__BL1_ROM_END__ <= (0x70180000 + (0x20000)),
           "BL1's ROM content has exceeded its limit.")
    __BSS_SIZE__ = SIZEOF(.bss);
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    ASSERT(. <= (((0x70180000 + (0x20000))) + (0x10000)), "BL1's RW section has exceeded its limit.")
}
