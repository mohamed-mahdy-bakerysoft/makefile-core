#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Makefile core module
#
# <https://github.com/Captive-Studio/makefile-core>
#
# DO NOT EDIT!
# Generated by the script/build.sh script.
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# CONSOLE
# @see src/console.mk
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

# Terminal colors

ifneq ($(TERM),)
	BLACK        := $(shell tput setaf 0)
	RED          := $(shell tput setaf 1)
	GREEN        := $(shell tput setaf 2)
	YELLOW       := $(shell tput setaf 3)
	LIGHTPURPLE  := $(shell tput setaf 4)
	PURPLE       := $(shell tput setaf 5)
	BLUE         := $(shell tput setaf 6)
	WHITE        := $(shell tput setaf 7)
	RESET        := $(shell tput sgr0)
	SMUL         := $(shell tput smul)
	RMUL         := $(shell tput rmul)
else
	BLACK        :=
	RED          :=
	GREEN        :=
	YELLOW       :=
	LIGHTPURPLE  :=
	PURPLE       :=
	BLUE         :=
	WHITE        :=
	RESET        :=
	SMUL         :=
	RMUL      	 :=
endif

#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# VARIABLES
# @see src/variables.mk
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

# Disable built-in rules and variables
# (this increases performance and avoids hard-to-debug behaviour);
MAKEFLAGS += -rR

# Avoid messages "Entering directory ..."
MAKEFLAGS += --no-print-directory

# Avoid funny character set dependencies
unexport LC_ALL
LC_COLLATE=C
LC_NUMERIC=C
export LC_COLLATE LC_NUMERIC

# PHONY default value is empty
ifeq ($(PHONY),)
  PHONY :=
endif

# Binaries
BUNDLE := bundle
CAT := cat
CD := cd
CHMOD := chmod
CP := cp
CURL := curl
DOCKER := docker
FALSE := false
FIND := find
GIT := git
GREP := grep -E
LN := ln
LS := ls
MKDIRP := mkdir -p
MV := mv
NOFAIL := 2>$(NULL) || $(TRUE)
NPM := npm
NULL := /dev/null
PWD := pwd
RM := rm
SED := sed
SHELL := /bin/bash
TAIL := tail
TOUCH := touch
TRUE := true

ifeq ($(CWD),)
	CWD := $(shell pwd)
endif

# Directory containing all git modules
MODULES_PATH := .modules

# Makefile variables

# URL to the updater script
MAKEFILE_CORE := $(MODULES_PATH)/core.mk
# URL to the updater script
MAKEFILE_UPDATER_URL := https://raw.githubusercontent.com/Captive-Studio/makefile-core/main/core.mk
## Makefiles to be included (default ".modules/*/Makefile", ".modules/*/*.{mk,make}")
MAKEFILE_INCLUDE ?= $(wildcard $(MODULES_PATH)/*/module.make) $(wildcard $(MODULES_PATH)/*/module.mk)
## Makefiles to be excluded (default "$(MAKEFILE_CORE)")
MAKEFILE_EXCLUDE ?= $(MAKEFILE_CORE) # Filtrer les fichiers qui commencent par "_"
## Optional Makefile loaded to override locally any value (default "Makefile.local")
MAKEFILE_LOCAL ?= Makefile.local
## Main Makefile path
MAKEFILE_PATH ?= $(abspath $(firstword $(MAKEFILE_LIST)))


# This target will print every variables declared in $(.VARIABLES)
#
# Example : make print-variables
#
PHONY += print-variables
print-variables: ## Print all declared variables
	@$(foreach V,$(sort $(.VARIABLES)), \
		$(if $(filter-out environment% default automatic, \
		$(origin $V)),$(info $V=$(YELLOW)"$($V)$(RESET)$(YELLOW)"$(RESET) $(if $(filter-out $(value $V), $($V)),$(BLACK)# `$(value $V)$(RESET)`,))))
	@echo ''

# Define default goal to help
.DEFAULT_GOAL := help

# Declare the contents of the PHONY variable as phony
# We use a variable so we can manipulate it easily
.PHONY: $(PHONY)

#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# UPDATER
# @see src/updater.mk
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

# Generate a default .gitmodule file
.gitmodules:
	@$(TOUCH) .gitmodules

# Generates a default makefile directory
$(MODULES_PATH):
	@$(MKDIRP) $(MODULES_PATH)


# Add a gitmodule into `.modules/`. This module will be automatically include if contains `*.mk`
#
# Example : make self-add url=https://github.com/ianstormtaylor/makefile-help
#
PHONY += self-add
self-add: .gitmodules $(MODULES_PATH) ## url=<url> [name=<string>] Add a makefile module (as git submodule)
	_self_add_module=$(or $(name), $(notdir $(url)), '') \
	@$(GIT) submodule add \
		--force \
		--name \
		${.self_add_module} \
		$(url) \
		$(MODULES_PATH)/${.self_add_module}

# This target will
# 1. Update makefile/core.mk
# 2. Update all submodules
#
# Example : make self-update
#
PHONY += self-update
self-update: $(MODULES_PATH) ## Update all makefile modules
ifdef update
# Actual update
	$(info Updating makefile modules...)
	@$(GIT) submodule update
	$(info Update finished)
else
# Update kernel
	$(info Updating $(MAKEFILE_CORE) from git...)
	@-$(CURL) -fsSL $(MAKEFILE_UPDATER_URL) --output $(MAKEFILE_CORE)
	@$(MAKE) -f $(firstword $(MAKEFILE_LIST)) self-update update=true
endif

#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# HELP
# @see src/help.mk
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

# Display a list of all available targets and flags
#
# Example : make help
#
# Example of Makefile
#
# ```makefile
# ## This is a help message
# my_target:
# ```
#

HELP_COLOR_FLAGS = $(BLUE)
HELP_COLOR_TARGETS = $(YELLOW)
HELP_COLOR_RESET = $(RESET)

PHONY += help
help: ## Show this help
	@echo ''
	@echo '  Usage:'
	@echo ''
	@echo '    make $(HELP_COLOR_TARGETS)<target>$(HELP_COLOR_RESET) $(HELP_COLOR_FLAGS)[FLAG1=...] [FLAG2=...]$(HELP_COLOR_RESET)'
	@echo ''
	@echo '  Targets:'
	@echo ''
	@$(SED) \
		-e '/^[a-zA-Z0-9_\-]*:.*##/!d' \
		-e 's/:.*##[[:space:]]*/|/' \
		-e 's/\(.*\)|\(.*\)/$(HELP_COLOR_TARGETS)\1$(HELP_COLOR_RESET)|\2/' \
		-e 's/\(.*\)/    \1/' \
		$(MAKEFILE_LIST) | column -c2 -t -s '|' | sort
	@echo ''
	@echo '  Flags:'
	@echo ''
	@awk '/^##/{ comment = substr($$0,4) } /^[a-zA-Z][a-zA-Z0-9_-]+ ?\?=/{ sub(/\?\=/, "", $$2); printf "    $(HELP_COLOR_FLAGS)%s$(HELP_COLOR_RESET)|%s\n", $$1, $$2 " " comment }' $(MAKEFILE_LIST)  | column -c2 -t -s '|' | sort
	@echo ''

#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# MAIN
# @see src/main.mk
#⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

#
# Includes every makefiles configured by MAKEFILE_INCLUDE excluding MAKEFILE_EXCLUDE
#
include $(filter-out $(MAKEFILE_EXCLUDE),$(MAKEFILE_INCLUDE))

#
# Include Makefile.local if it exists
#
# /!\ WARNING : this must be at the end of all files
-include $(MAKEFILE_LOCAL)

