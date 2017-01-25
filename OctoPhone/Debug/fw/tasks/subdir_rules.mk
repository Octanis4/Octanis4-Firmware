################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
fw/tasks/call.obj: ../fw/tasks/call.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/call.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/tasks/mail.obj: ../fw/tasks/mail.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/mail.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/tasks/menu.obj: ../fw/tasks/menu.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/menu.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/tasks/phonebook.obj: ../fw/tasks/phonebook.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/phonebook.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/tasks/sms.obj: ../fw/tasks/sms.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/sms.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

fw/tasks/system.obj: ../fw/tasks/system.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP432 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me --include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.7/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --include_path="C:/Users/beat/Documents/octanis/Octanis4-Firmware/OctoPhone" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc/CMSIS" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/inc" --include_path="C:/ti/tirtos_msp43x_2_16_01_14/products/msp432_driverlib_3_10_00_09/driverlib/MSP432P4xx" --advice:power_severity=suppress --advice:power=all -g --gcc --define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --define=MSP432WARE --diag_wrap=off --display_error_number --diag_warning=225 --diag_warning=255 --gen_func_subsections=on --preproc_with_compile --preproc_dependency="fw/tasks/system.pp" --obj_directory="fw/tasks" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


