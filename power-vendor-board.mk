# Disable Power HAL by default for legacy targets.
# Devices can still opt in by setting TARGET_USES_NON_LEGACY_POWERHAL in BoardConfig.mk.
# Conversely, recent chips, such as sm8150 with an old vendor can opt out.
ACCEPTED_PLATFORMS := $(filter-out $(TRINKET), $(UM_4_14_FAMILY))
ifeq ($(call is-board-platform-in-list, $(ACCEPTED_PLATFORMS)), true)
TARGET_USES_NON_LEGACY_POWERHAL ?= true
endif
