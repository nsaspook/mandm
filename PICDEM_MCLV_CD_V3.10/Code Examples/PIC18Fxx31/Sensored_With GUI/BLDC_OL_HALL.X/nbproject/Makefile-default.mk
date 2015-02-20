#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
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
OUTPUT_SUFFIX=lib
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=lib
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../BLDC_OL.asm ../BLDC_OL_routines.asm ../BLDCbuffer.asm ../BLDCCommunication.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BLDC_OL.o ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o ${OBJECTDIR}/_ext/1472/BLDCbuffer.o ${OBJECTDIR}/_ext/1472/BLDCCommunication.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BLDC_OL.o.d ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o.d ${OBJECTDIR}/_ext/1472/BLDCbuffer.o.d ${OBJECTDIR}/_ext/1472/BLDCCommunication.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BLDC_OL.o ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o ${OBJECTDIR}/_ext/1472/BLDCbuffer.o ${OBJECTDIR}/_ext/1472/BLDCCommunication.o

# Source Files
SOURCEFILES=../BLDC_OL.asm ../BLDC_OL_routines.asm ../BLDCbuffer.asm ../BLDCCommunication.asm


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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18f2431
MP_LINKER_DEBUG_OPTION=-r=ROM@0x3DC0:0x3FFF -r=RAM@GPR:0x2F4:0x2FF
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/BLDC_OL.o: ../BLDC_OL.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDC_OL.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_ICD3=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.o\\\" \\\"../BLDC_OL.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDC_OL.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDC_OL.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o: ../BLDC_OL_routines.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_ICD3=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o\\\" \\\"../BLDC_OL_routines.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDCbuffer.o: ../BLDCbuffer.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCbuffer.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDCbuffer.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_ICD3=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.o\\\" \\\"../BLDCbuffer.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDCbuffer.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDCbuffer.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDCCommunication.o: ../BLDCCommunication.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCCommunication.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDCCommunication.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_ICD3=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.o\\\" \\\"../BLDCCommunication.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDCCommunication.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDCCommunication.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
else
${OBJECTDIR}/_ext/1472/BLDC_OL.o: ../BLDC_OL.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDC_OL.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDC_OL.o\\\" \\\"../BLDC_OL.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDC_OL.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDC_OL.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o: ../BLDC_OL_routines.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o\\\" \\\"../BLDC_OL_routines.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDC_OL_routines.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDCbuffer.o: ../BLDCbuffer.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCbuffer.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDCbuffer.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDCbuffer.o\\\" \\\"../BLDCbuffer.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDCbuffer.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDCbuffer.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/_ext/1472/BLDCCommunication.o: ../BLDCCommunication.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCCommunication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BLDCCommunication.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/_ext/1472/BLDCCommunication.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.lst\\\" -e\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.err\\\" $(ASM_OPTIONS)   -o\\\"${OBJECTDIR}/_ext/1472/BLDCCommunication.o\\\" \\\"../BLDCCommunication.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/_ext/1472/BLDCCommunication.o"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BLDCCommunication.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) -c dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE) -c dist/${CND_CONF}/${IMAGE_TYPE}/BLDC_OL_HALL.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}     
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
