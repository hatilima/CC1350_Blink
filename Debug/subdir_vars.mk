################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../hello.cfg 

CPP_SRCS += \
../Trial.cpp \
../mainBlink.cpp 

CMD_SRCS += \
../CC1350_LAUNCHXL_TIRTOS.cmd 

C_SRCS += \
../CC1350_LAUNCHXL.c \
../CC1350_LAUNCHXL_fxns.c \
../ccfg.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_MISC_DIRS += \
./configPkg/ 

C_DEPS += \
./CC1350_LAUNCHXL.d \
./CC1350_LAUNCHXL_fxns.d \
./ccfg.d 

GEN_OPTS += \
./configPkg/compiler.opt 

OBJS += \
./CC1350_LAUNCHXL.obj \
./CC1350_LAUNCHXL_fxns.obj \
./Trial.obj \
./ccfg.obj \
./mainBlink.obj 

CPP_DEPS += \
./Trial.d \
./mainBlink.d 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" 

OBJS__QUOTED += \
"CC1350_LAUNCHXL.obj" \
"CC1350_LAUNCHXL_fxns.obj" \
"Trial.obj" \
"ccfg.obj" \
"mainBlink.obj" 

C_DEPS__QUOTED += \
"CC1350_LAUNCHXL.d" \
"CC1350_LAUNCHXL_fxns.d" \
"ccfg.d" 

CPP_DEPS__QUOTED += \
"Trial.d" \
"mainBlink.d" 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

C_SRCS__QUOTED += \
"../CC1350_LAUNCHXL.c" \
"../CC1350_LAUNCHXL_fxns.c" \
"../ccfg.c" 

CPP_SRCS__QUOTED += \
"../Trial.cpp" \
"../mainBlink.cpp" 


