################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
fw/lib/cellular/at_serial.obj: ../fw/lib/cellular/at_serial.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/lib/cellular/at_serial.pp" --obj_directory="fw/lib/cellular" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/lib/cellular/cellular.obj: ../fw/lib/cellular/cellular.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/lib/cellular/cellular.pp" --obj_directory="fw/lib/cellular" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/lib/cellular/sara_g350.obj: ../fw/lib/cellular/sara_g350.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/lib/cellular/sara_g350.pp" --obj_directory="fw/lib/cellular" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/lib/cellular/sim800.obj: ../fw/lib/cellular/sim800.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/lib/cellular/sim800.pp" --obj_directory="fw/lib/cellular" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


