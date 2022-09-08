# Currently support: arm64 riscv64
ARCH ?= aarch64
# Currently support: 1 2 3 4 5 6 7 8
CH ?= 8

MAKE := make
GIT := git


target_dir := $(ARCH)/os

run:
	cd $(target_dir) && \
	$(GIT) checkout ch$(CH) && \
	$(MAKE) env run

ALL_BRANCHS := 1 2 3 4 5 6 7 8

check_all:
	cd $(target_dir) && \
	$(foreach ch, $(ALL_BRANCHS), $(GIT) checkout ch$(ch); $(MAKE) check;)

