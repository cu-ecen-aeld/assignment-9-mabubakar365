################################################################################
#
# LDD
#
################################################################################
LDD_VERSION = 'f3283392f3bc3c1ee1189ce6e39e15e6640eb7d0'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-mabubakar365.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = COPYING

LDD_MODULE_SUBDIRS += scull
LDD_MODULE_SUBDIRS += misc-modules

$(eval $(kernel-module))
$(eval $(generic-package))