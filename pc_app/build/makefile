##########################################################
# makefile: Central makefile ("workspace")
#
# AVoloshyn
#
##########################################################
#
##############################################################
TGT_NAME = all mi_14
CHDIR = cd
DEL = rm
DELDIR = rmdir
MKDIR = mkdir
	
all: 	mi_14
		@echo "========== MAKE ALL DONE =========="

mi_14:	apps/LauncherApp \
        apps/TestApp_1 \
        apps/TestApp_2 \
        apps/DataGenerator

apps/DataGenerator \
apps/TestApp_1 \
apps/TestApp_2 \
apps/LauncherApp :
	@echo "========== MAKING $@ =========="
	$(CHDIR) ../$@ && qmake && make			
	
clean:
	$(CHDIR) ../apps/LauncherApp/  && make clean && $(DEL) Makefile
	$(CHDIR) ../apps/DataGenerator/ && make clean && $(DEL) Makefile
	@echo "========== MAKE ALL DONE ==========" 
