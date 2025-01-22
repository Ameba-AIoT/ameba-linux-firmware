OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(bl2_entrypoint)
MEMORY {
    RAM (rwx): ORIGIN = ((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000), LENGTH = (((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000) + 0x40000) - ((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000)
}
SECTIONS
{
    . = ((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000);
    ASSERT(. == ALIGN(((1) << (12))),
           "BL2_BASE address is not aligned on a page boundary.")
    .text . : {
        __TEXT_START__ = .;
        *bl2_entrypoint.o(.text*)
        *(SORT_BY_ALIGNMENT(.text*))
        *(.vectors)
        . = ALIGN(((1) << (12)));
        __TEXT_END__ = .;
     } >RAM
     .ARM.extab . : {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
     } >RAM
     .ARM.exidx . : {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
     } >RAM
    .rodata . : {
        __RODATA_START__ = .;
        *(SORT_BY_ALIGNMENT(.rodata*))
 . = ALIGN(4); __RT_SVC_DESCS_START__ = .; KEEP(*(rt_svc_descs)) __RT_SVC_DESCS_END__ = .; . = ALIGN(4); __FCONF_POPULATOR_START__ = .; KEEP(*(.fconf_populator)) __FCONF_POPULATOR_END__ = .; . = ALIGN(4); __PMF_SVC_DESCS_START__ = .; KEEP(*(pmf_svc_descs)) __PMF_SVC_DESCS_END__ = .; . = ALIGN(4); __PARSER_LIB_DESCS_START__ = .; KEEP(*(.img_parser_lib_descs)) __PARSER_LIB_DESCS_END__ = .; . = ALIGN(4); __CPU_OPS_START__ = .; KEEP(*(cpu_ops)) __CPU_OPS_END__ = .; . = ALIGN(4); __GOT_START__ = .; *(.got) __GOT_END__ = .;
        . = ALIGN(((1) << (12)));
        __RODATA_END__ = .;
    } >RAM
    __RW_START__ = . ;
    .data . : {
        __DATA_START__ = .;
        *(SORT_BY_ALIGNMENT(.data*))
        __DATA_END__ = .;
    } >RAM
    stacks (NOLOAD) : {
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
    __RW_END__ = .;
    __BL2_END__ = .;
    __BSS_SIZE__ = SIZEOF(.bss);
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    ASSERT(. <= (((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000) + 0x40000), "BL2 image has exceeded its limit.")
}
