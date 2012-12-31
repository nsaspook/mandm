#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/crit.o ${OBJECTDIR}/_ext/1472/hwconf.o ${OBJECTDIR}/_ext/1472/model.o ${OBJECTDIR}/_ext/1472/power.o ${OBJECTDIR}/_ext/1472/daq.o ${OBJECTDIR}/_ext/1472/mandm8722.o ${OBJECTDIR}/_ext/1472/mandm_vector.o ${OBJECTDIR}/_ext/1912623324/writdata.o ${OBJECTDIR}/_ext/1912623324/openxlcd.o ${OBJECTDIR}/_ext/1912623324/putrxlcd.o ${OBJECTDIR}/_ext/1912623324/putsxlcd.o ${OBJECTDIR}/_ext/1912623324/readaddr.o ${OBJECTDIR}/_ext/1912623324/readdata.o ${OBJECTDIR}/_ext/1912623324/setcgram.o ${OBJECTDIR}/_ext/1912623324/setddram.o ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o ${OBJECTDIR}/_ext/1912623324/busyxlcd.o ${OBJECTDIR}/_ext/1472/config.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/crit.o.d ${OBJECTDIR}/_ext/1472/hwconf.o.d ${OBJECTDIR}/_ext/1472/model.o.d ${OBJECTDIR}/_ext/1472/power.o.d ${OBJECTDIR}/_ext/1472/daq.o.d ${OBJECTDIR}/_ext/1472/mandm8722.o.d ${OBJECTDIR}/_ext/1472/mandm_vector.o.d ${OBJECTDIR}/_ext/1912623324/writdata.o.d ${OBJECTDIR}/_ext/1912623324/openxlcd.o.d ${OBJECTDIR}/_ext/1912623324/putrxlcd.o.d ${OBJECTDIR}/_ext/1912623324/putsxlcd.o.d ${OBJECTDIR}/_ext/1912623324/readaddr.o.d ${OBJECTDIR}/_ext/1912623324/readdata.o.d ${OBJECTDIR}/_ext/1912623324/setcgram.o.d ${OBJECTDIR}/_ext/1912623324/setddram.o.d ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o.d ${OBJECTDIR}/_ext/1912623324/busyxlcd.o.d ${OBJECTDIR}/_ext/1472/config.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/crit.o ${OBJECTDIR}/_ext/1472/hwconf.o ${OBJECTDIR}/_ext/1472/model.o ${OBJECTDIR}/_ext/1472/power.o ${OBJECTDIR}/_ext/1472/daq.o ${OBJECTDIR}/_ext/1472/mandm8722.o ${OBJECTDIR}/_ext/1472/mandm_vector.o ${OBJECTDIR}/_ext/1912623324/writdata.o ${OBJECTDIR}/_ext/1912623324/openxlcd.o ${OBJECTDIR}/_ext/1912623324/putrxlcd.o ${OBJECTDIR}/_ext/1912623324/putsxlcd.o ${OBJECTDIR}/_ext/1912623324/readaddr.o ${OBJECTDIR}/_ext/1912623324/readdata.o ${OBJECTDIR}/_ext/1912623324/setcgram.o ${OBJECTDIR}/_ext/1912623324/setddram.o ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o ${OBJECTDIR}/_ext/1912623324/busyxlcd.o ${OBJECTDIR}/_ext/1472/config.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F8722
MP_PROCESSOR_OPTION_LD=18f8722
MP_LINKER_DEBUG_OPTION= -u_DEBUGCODESTART=0x1fd30 -u_DEBUGCODELEN=0x2d0 -u_DEBUGDATASTART=0xef4 -u_DEBUGDATALEN=0xb
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/crit.o: ../crit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/crit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/crit.o   ../crit.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/crit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/hwconf.o: ../hwconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hwconf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/hwconf.o   ../hwconf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/hwconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hwconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/model.o: ../model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/model.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/model.o   ../model.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/power.o: ../power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/power.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/power.o   ../power.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/daq.o: ../daq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/daq.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/daq.o   ../daq.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/daq.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/daq.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/mandm8722.o: ../mandm8722.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mandm8722.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/mandm8722.o   ../mandm8722.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/mandm8722.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mandm8722.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/mandm_vector.o: ../mandm_vector.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mandm_vector.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/mandm_vector.o   ../mandm_vector.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/mandm_vector.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mandm_vector.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/writdata.o: ../../../../media/usb1/mandm/mandm/xlcd/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/writdata.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/writdata.o   ../../../../media/usb1/mandm/mandm/xlcd/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/openxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/openxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/openxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/putrxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/putrxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/putrxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/putsxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/putsxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/putsxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/readaddr.o: ../../../../media/usb1/mandm/mandm/xlcd/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/readaddr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/readaddr.o   ../../../../media/usb1/mandm/mandm/xlcd/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/readdata.o: ../../../../media/usb1/mandm/mandm/xlcd/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/readdata.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/readdata.o   ../../../../media/usb1/mandm/mandm/xlcd/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/setcgram.o: ../../../../media/usb1/mandm/mandm/xlcd/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/setcgram.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/setcgram.o   ../../../../media/usb1/mandm/mandm/xlcd/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/setddram.o: ../../../../media/usb1/mandm/mandm/xlcd/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/setddram.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/setddram.o   ../../../../media/usb1/mandm/mandm/xlcd/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/busyxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/busyxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/busyxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/config.o: ../config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/config.o   ../config.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1472/crit.o: ../crit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/crit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/crit.o   ../crit.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/crit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/crit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/hwconf.o: ../hwconf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hwconf.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/hwconf.o   ../hwconf.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/hwconf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hwconf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/model.o: ../model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/model.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/model.o   ../model.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/power.o: ../power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/power.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/power.o   ../power.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/daq.o: ../daq.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/daq.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/daq.o   ../daq.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/daq.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/daq.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/mandm8722.o: ../mandm8722.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mandm8722.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/mandm8722.o   ../mandm8722.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/mandm8722.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mandm8722.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/mandm_vector.o: ../mandm_vector.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/mandm_vector.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/mandm_vector.o   ../mandm_vector.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/mandm_vector.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/mandm_vector.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/writdata.o: ../../../../media/usb1/mandm/mandm/xlcd/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/writdata.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/writdata.o   ../../../../media/usb1/mandm/mandm/xlcd/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/openxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/openxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/openxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/putrxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/putrxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/putrxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/putsxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/putsxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/putsxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/readaddr.o: ../../../../media/usb1/mandm/mandm/xlcd/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/readaddr.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/readaddr.o   ../../../../media/usb1/mandm/mandm/xlcd/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/readdata.o: ../../../../media/usb1/mandm/mandm/xlcd/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/readdata.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/readdata.o   ../../../../media/usb1/mandm/mandm/xlcd/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/setcgram.o: ../../../../media/usb1/mandm/mandm/xlcd/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/setcgram.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/setcgram.o   ../../../../media/usb1/mandm/mandm/xlcd/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/setddram.o: ../../../../media/usb1/mandm/mandm/xlcd/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/setddram.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/setddram.o   ../../../../media/usb1/mandm/mandm/xlcd/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1912623324/busyxlcd.o: ../../../../media/usb1/mandm/mandm/xlcd/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1912623324 
	@${RM} ${OBJECTDIR}/_ext/1912623324/busyxlcd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1912623324/busyxlcd.o   ../../../../media/usb1/mandm/mandm/xlcd/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1912623324/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1912623324/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1472/config.o: ../config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -I"../C:/Program Files/Microchip/mplabc18/v3.40/h" -I".." -ml -oa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1472/config.o   ../config.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1472/config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "../18f8722_g.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"$(BINDIR_)$(TARGETBASE).map" -w -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "../18f8722_g.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"$(BINDIR_)$(TARGETBASE).map" -w -l".."  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/mandm.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
