################################################################################
#
# LDD
#
################################################################################
LDD_VERSION = 'a653e5f49684d2277a310712492bc1ba75d253dd'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-mabubakar365.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS += scull/
LDD_MODULE_SUBDIRS += misc-modules/


define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -d $(TARGET_DIR)/lib
	$(INSTALL) -m  0644 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m  0644 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m  0644 $(@D)/scull/scull.ko $(TARGET_DIR)/lib/

	$(INSTALL) -m  0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m  0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m  0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m  0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin

endef


$(eval $(kernel-module))
$(eval $(generic-package))