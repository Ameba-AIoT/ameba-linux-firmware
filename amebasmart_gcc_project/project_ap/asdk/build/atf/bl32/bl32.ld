OUTPUT_FORMAT(elf32-littlearm)
OUTPUT_ARCH(arm)
ENTRY(sp_min_vector_table)
MEMORY {
    RAM (rwx): ORIGIN = (((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000) + 0x40000), LENGTH = (0x70180000 + 0x00180000) - (((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000) + 0x40000)
}
SECTIONS
{
    . = (((((0x70180000 + (0x20000))) + (0x10000)) + 0x10000) + 0x40000);
   ASSERT(. == ALIGN(((1) << (12))),
          "BL32_BASE address is not aligned on a page boundary.")
    .text . : {
        __TEXT_START__ = .;
        *entrypoint.o(.text*)
        *(.text*)
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
        *(.rodata*)
 . = ALIGN(4); __RT_SVC_DESCS_START__ = .; KEEP(*(rt_svc_descs)) __RT_SVC_DESCS_END__ = .; . = ALIGN(4); __FCONF_POPULATOR_START__ = .; KEEP(*(.fconf_populator)) __FCONF_POPULATOR_END__ = .; . = ALIGN(4); __PMF_SVC_DESCS_START__ = .; KEEP(*(pmf_svc_descs)) __PMF_SVC_DESCS_END__ = .; . = ALIGN(4); __PARSER_LIB_DESCS_START__ = .; KEEP(*(.img_parser_lib_descs)) __PARSER_LIB_DESCS_END__ = .; . = ALIGN(4); __CPU_OPS_START__ = .; KEEP(*(cpu_ops)) __CPU_OPS_END__ = .; . = ALIGN(4); __GOT_START__ = .; *(.got) __GOT_END__ = .;
        . = ALIGN(8);
__pubsub_psci_cpu_on_finish_start = .; KEEP(*(__pubsub_psci_cpu_on_finish)); __pubsub_psci_cpu_on_finish_end = .;
__pubsub_psci_suspend_pwrdown_start_start = .; KEEP(*(__pubsub_psci_suspend_pwrdown_start)); __pubsub_psci_suspend_pwrdown_start_end = .;
__pubsub_psci_suspend_pwrdown_finish_start = .; KEEP(*(__pubsub_psci_suspend_pwrdown_finish)); __pubsub_psci_suspend_pwrdown_finish_end = .;
        . = ALIGN(((1) << (12)));
        __RODATA_END__ = .;
    } >RAM
    ASSERT(__CPU_OPS_END__ > __CPU_OPS_START__,
           "cpu_ops not defined for this platform.")
    __RW_START__ = . ;
    .data . : {
        __DATA_START__ = .;
        *(.data*)
        __DATA_END__ = .;
    } >RAM
    stacks (NOLOAD) : {
        __STACKS_START__ = .;
        *(tzfw_normal_stacks)
        __STACKS_END__ = .;
    } >RAM
    .bss (NOLOAD) : ALIGN(8) { __BSS_START__ = .; *(SORT_BY_ALIGNMENT(.bss*)) *(COMMON) . = ALIGN((1 << 6)); __PMF_TIMESTAMP_START__ = .; KEEP(*(pmf_timestamp_array)) . = ALIGN((1 << 6)); __PMF_PERCPU_TIMESTAMP_END__ = .; __PERCPU_TIMESTAMP_SIZE__ = ABSOLUTE(. - __PMF_TIMESTAMP_START__); . = . + (__PERCPU_TIMESTAMP_SIZE__ * ((1 * 2) - 1)); __PMF_TIMESTAMP_END__ = .; . = ALIGN(16); *(base_xlat_table) __BSS_END__ = .; } >RAM
    xlat_table (NOLOAD) : { *(xlat_table) } >RAM
     __BSS_SIZE__ = SIZEOF(.bss);
    coherent_ram (NOLOAD) : ALIGN(((1) << (12))) {
        __COHERENT_RAM_START__ = .;
        *(bakery_lock)
        *(tzfw_coherent_mem)
        __COHERENT_RAM_END_UNALIGNED__ = .;
        . = ALIGN(((1) << (12)));
        __COHERENT_RAM_END__ = .;
    } >RAM
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    __RW_END__ = .;
   __BL32_END__ = .;
}
