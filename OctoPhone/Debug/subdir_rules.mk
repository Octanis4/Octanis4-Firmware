################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
MSP_EXP432P401R.obj: ../MSP_EXP432P401R.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="MSP_EXP432P401R.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: ../empty.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_32_00_06_core/xs" --xdcpath="C:/ti/tirtos_msp43x_2_16_01_14/packages;C:/ti/tirtos_msp43x_2_16_01_14/products/bios_6_45_02_31/packages;C:/ti/tirtos_msp43x_2_16_01_14/products/tidrivers_msp43x_2_16_01_13/packages;C:/ti/tirtos_msp43x_2_16_01_14/products/uia_2_00_05_50/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.msp432:MSP432P401R -r release -c "C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7" --compileOptions "-mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path=\"C:/ti/ccsv6/ccs_base/arm/include\" --include_path=\"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include\" --include_path=\"C:/ti/ccsv6/ccs_base/arm/include/CMSIS\" --include_path=\"C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone\" --include_path=\"C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS\" --include_path=\"C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc\" --include_path=\"C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx\" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on  " "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd


