################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/bin/armcl" -mv7M3 --code_state=16 --float_support=vfplib -me --include_path="C:/Users/Jasper/workspace_v9/Blink1_GPIO_toggle" --include_path="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include" --define=DeviceFamily_CC13X0 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-1421884111:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-1421884111-inproc

build-1421884111-inproc: ../hello.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/ccs930/xdctools_3_60_02_34_core/xs" --xdcpath="C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source;C:/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M3 -p ti.platforms.simplelink:CC1350F128 -r release -c "C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS" --compileOptions "-mv7M3 --code_state=16 --float_support=vfplib -me --include_path=\"C:/Users/Jasper/workspace_v9/Blink1_GPIO_toggle\" --include_path=\"C:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs\" --include_path=\"C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include\" --define=DeviceFamily_CC13X0 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-1421884111 ../hello.cfg
configPkg/compiler.opt: build-1421884111
configPkg/: build-1421884111


