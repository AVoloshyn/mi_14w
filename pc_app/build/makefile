##########################################################
# makefile: Central makefile ("workspace")
# for: See BUILD_TARGETS below
#
# AVoloshyn
#
##########################################################
#
##############################################################
# Definition of the libs built by this makefile
# Definition of the variable BUILD_TARGETS
##############################################################
#
# Your libs: Add further libs, if necessary. 
#            Introduce rules for them below.

#TGT_NAME := all hmi clean_hmi
TGT_NAME := mi_14

# Needed and checked by the general include below:
BUILD_TARGETS := $(TGT_NAME)

##############################################################
# Define variables for the build: 
# list of sources etc.
##############################################################

##############################################################
# General include: Definition of MAINBUILD_DIR, then include
##############################################################

include	makefile_gen.mk

# Optionally: Extend CFLAGS
# Optionally: Extend LDFLAGS
# Optionally: Extend DEFINES

$(echo Central make file)

# Optionally: Extend LDFLAGS

##############################################################
# Rules
##############################################################
#clean_application/oipdemo/common/plugins/qmllauncherplugin \
#clean_application/oipdemo/common/plugins/qmlaudioplayerplugin \
#clean_application/oipdemo/common/plugins/qmlphoneplugin \
#clean_application/oipdemo/common/plugins/qmlphonepopupplugin \
#clean_application/oipdemo/common/plugins/qmlstatusbarplugin \
#clean_application/oipdemo/common/plugins/qmlpictureviewerplugin\
#clean_application/oipdemo/Phone \
#clean_application/oipdemo/AudioPlayer \
#clean_application/oipdemo/Launcher \
#clean_application/oipdemo/Statusbar \
#clean_application/oipdemo/PictureViewer \
#clean_HMI_sClientFPC clean_HMI_sClient clean_application/HmiServerHelloWorld clean_HMI_Server :
#	$(CHDIR) ../$(subst clean_,,$@) && qmake && make distclean

clean_mosquitto:
	$(CHDIR) ../EXTERNAL/MOSQUITTO/mosquitto-1.3.1 && make clean
	$(CHDIR) ../EXTERNAL/MOSQUITTO/mosquitto-1.3.1 && $(DEL) -r *
	$(DELDIR) ../EXTERNAL/MOSQUITTO/mosquitto-1.3.1
	@echo $@ done

clean_music:
	$(DEL) -r ${HMI_SERVER_RUN_PATH}/application/oipdemo/AudioPlayer/music/*

clean_hmi: clean_application/oipdemo/Phone \
  clean_application/oipdemo/Statusbar \
  clean_application/oipdemo/AudioPlayer \
  clean_application/oipdemo/Launcher \
  clean_application/oipdemo/PictureViewer \
  clean_application/oipdemo/common/plugins/qmlaudioplayerplugin \
  clean_application/oipdemo/common/plugins/qmllauncherplugin \
  clean_application/oipdemo/common/plugins/qmlphoneplugin \
  clean_application/oipdemo/common/plugins/qmlphonepopupplugin \
  clean_application/oipdemo/common/plugins/qmlpictureviewerplugin\
  clean_application/oipdemo/common/plugins/qmlstatusbarplugin \
  clean_HMI_sClientFPC clean_HMI_sClient clean_application/HmiServerHelloWorld clean_HMI_Server 
	
# Precondition: Target names have to contain the according path names
clean: clean_hmi clean_music clean_mosquitto
	@echo $@ done

mosquitto:
	$(CHDIR) ../EXTERNAL/MOSQUITTO && tar -xzf mosquitto-1.3.1.tar.gz
	$(CHDIR) ../EXTERNAL/MOSQUITTO/mosquitto-1.3.1 && make
	@echo $@ done

music:
	$(CPY) -rsf $(HMI_SERVER_MUSIC_PATH)/*  ${HMI_SERVER_RUN_PATH}/application/oipdemo/AudioPlayer/music/
	@echo $@: created links to music data
	

# Precondition: Target names have to contain the according path names
# Note: If you add new targets here, note to also think on the clean_ targets.
#       Note to also adapt the files run_x86.sh and start_creator.sh accordingly.
HMI_Server application/HmiServerHelloWorld HMI_sClient HMI_sClientFPC \
application/oipdemo/common/plugins/qmllauncherplugin \
application/oipdemo/common/plugins/qmlaudioplayerplugin \
application/oipdemo/common/plugins/qmlphoneplugin \
application/oipdemo/common/plugins/qmlphonepopupplugin \
application/oipdemo/common/plugins/qmlstatusbarplugin \
application/oipdemo/common/plugins/qmlpictureviewerplugin \
application/oipdemo/Launcher \
application/oipdemo/AudioPlayer \
application/oipdemo/Statusbar \
application/oipdemo/PictureViewer \
application/oipdemo/Phone :
	$(CHDIR) ../$@ && qmake && make


# Build only hmi - related software (all but music and mosquitto)
# In the case of static plugins, the plugins need to be built before the HMI_sClient's, so:
hmi: application/oipdemo/common/plugins/qmllauncherplugin \
     application/oipdemo/common/plugins/qmlaudioplayerplugin \
     application/oipdemo/common/plugins/qmlphoneplugin \
     application/oipdemo/common/plugins/qmlphonepopupplugin \
     application/oipdemo/common/plugins/qmlstatusbarplugin \
     application/oipdemo/common/plugins/qmlpictureviewerplugin \
     HMI_Server application/HmiServerHelloWorld HMI_sClient HMI_sClientFPC \
     application/oipdemo/Launcher application/oipdemo/AudioPlayer \
     application/oipdemo/Phone \
     application/oipdemo/Statusbar \
     application/oipdemo/PictureViewer


# Build all software
all: mosquitto music hmi


# The following are prepared to allow specific settings for specific builds. Currently, no such specific settings are needed.
# The makefile_gen has already done consistency checks such that any wrong target is checked against the setting of $ARCH.
lager: all

x86: all


