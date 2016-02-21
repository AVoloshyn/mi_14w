##########################################################
# General makefile include 
# It is a helper file in the build process
#
# The makefile which includes the present include has to set the
# environment variable:
# BUILD_TARGETS
# Explanation to BUILD_TARGETS:
# A list of libs built by the makefile. The definition of it is checked.
# The handed-over target must be contained 
# in the list of $(BUILD_TARGETS), but needs not to coincide with the list.
#
# $(MAKECMDGOALS) is one or a combination of:
#   x86 lager clean $(BUILD_TARGETS) ...
# - The allowed combinations are "as usual":
#   Only one of x86 lager clean is allowed.
# - Phony targets are: clean
# - clean: If clean is named as a target: NOTHING shall be built!
#   Note: If not in "clean": At least one target has to be defined!
#
# This general makefile defines one of the platform variables
# PLATFORM_X86, PLATFORM_LAGER
# They can be used in the makefile that includes the present makefile_gen.
#
# Took a more complicate makefile_gen.mk from the COMP
# project as a sample.
#
# Copyright: Continental Automotive GmbH, Wetzlar 2014
# 
# Peter Kuhlmann
#
##########################################################

##########################################################
# Log of the used environment variables.
##########################################################
# None so far

##########################################################
# Check of required environment variables
##########################################################
ifndef BUILD_TARGETS
$(error BUILD_TARGETS not defined)
endif

##########################################################
# Initialization: Usual environment macros.
#                 These settings are not linked to any
#                 rule, but are just "defines".
##########################################################
#
#   Guideline for any make file:
SHELL := /bin/sh
.SUFFIXES:

# The next flag may be used to track errors or to log the
# make progress
# Usual log: If inactive, set to 0, if active, set to != 0
LOGMK := 0

# To prepare a portable makefile: Operating system abstraction:
AT := @        # Allow to switch on/off the echo
CHDIR := cd
CHDIR_UP := $(CHDIR) ..
CPY := cp
MOVE := mv
DEL := rm
DELDIR := rmdir
MKDIR := mkdir
TOUCH := touch
# CMP := cmp
PWD := pwd
# SED := sed
# UNZIP := compress
# ZIP := uncompress
LSDIR := ls -d

##############################################################
# Parse make goals, assign target, version, and
# the build results directory
##############################################################
GOALS_COUNT := $(words $(MAKECMDGOALS))

# Check that: At least one target must be given, or clean must be given.
NR_ALLOWED_TARGETS := \
  $(words $(filter x86 lager clean $(BUILD_TARGETS), $(MAKECMDGOALS)))
ifndef NR_ALLOWED_TARGETS
    $(error No build target is given: $(MAKECMDGOALS))
endif
ifdef NR_ALLOWED_TARGETS
ifeq ($(NR_ALLOWED_TARGETS),0)
    $(error No allowed build target is given: $(MAKECMDGOALS))
endif
endif

##############################################################
# Determine whether x86 or lager
##############################################################
ifeq ($(filter x86, $(MAKECMDGOALS)),x86)
  # Do a consistency check of env settings from sdk for lager, should NOT be active here.
  ifeq ($(filter arm, $(ARCH)),arm)
    $(error x86 given as target, but ARCH is $(ARCH))
  else
    $(echo platform x86)
    PLATFORM_X86 :=
  endif
else
  ifeq ($(filter lager, $(MAKECMDGOALS)),lager)
    # Do a consistency check of env settings from sdk for lager, should be active here.
    ifeq ($(filter arm, $(ARCH)),arm)
      $(echo platform lager)
      PLATFORM_LAGER :=
    else
      $(error lager given as target, but ARCH is $(ARCH))
    endif
  else
    # Not an error, just an info
    $(echo Info, no platform explicitely defined)
  endif
endif

##############################################################
# Compiler, flags, directory initialize
##############################################################
# Our sources and compiler definitions:
ifdef PLATFORM_X86
    CC := gcc
    $(echo CC is $(CC))
    # Define C flags. No default -ansi definition is applied here.
    CFLAGS := 
endif

##############################################################
# Dependency generator: Based on the CC
##############################################################
# $(call mk_depend,source-files,object-files,depend-files,flags)
define mk_depend
$(CC) -MM \
-MF $3 \
-MP \
-MT $2 \
$4 \
$1
endef
# endef: end of define

##############################################################
# Archiver and flags:
##############################################################
ifdef PLATFORM_X86
    ARCHIVER := ar
    ARFLAGS := rcs
endif

##############################################################
# Linker flags:
##############################################################
# You may also extend them in your local makefile by +=
ifdef PLATFORM_X86
    LDFLAGS := 
endif
    
###############################################################
# Source files with paths, inc dirs, object files, dependencies
###############################################################
DEF_FLAGS := $(addprefix -D,$(DEFINES))

# Our objects are defined, so include our dependencies
ifneq ($(filter clean, $(MAKECMDGOALS)),clean)
  # If there are no .d files, the "-" tells make to not complain!
  -include $(%.o=%.d)
else
  $(echo clean active, so no dependencies are included)
endif

##############################################################
# Generic rules:
##############################################################

# Default rule, always worked out
.DEFAULT:
	@echo $@: Make called with $(GOALS_COUNT) parameters: $(MAKECMDGOALS)

# Phony rules: Rules not linked to any target name
.PHONY: clean

##############################################################
# Generic report rule
# For debugging purposes, 
# one may optionally use gen_report as precondition the rules.
# Just redefine LOGMK and DBGMK here to 1, see makefile_gen.mk
# Example use
# clean: gen_report delete_all
##############################################################
gen_report:
ifneq ($(LOGMK),0)
	@echo $@: Make called with $(GOALS_COUNT) parameters: $(MAKECMDGOALS)
endif
# Log all further generic variables
ifneq ($(DEBUGMK),0)
	@echo Supported BUILD_TARGETS:  $(BUILD_TARGETS)
	@echo Local build directory:    $(shell $(PWD))
	@echo NR_ALLOWED_TARGETS:       $(NR_ALLOWED_TARGETS)
endif

