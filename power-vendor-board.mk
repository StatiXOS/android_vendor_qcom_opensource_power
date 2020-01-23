# Disable Power HAL by default for legacy targets.
# Devices can still opt in by setting TARGET_USES_NON_LEGACY_POWERHAL in BoardConfig.mk.
# Conversely, recent chips, such as sm8150 with an old vendor can opt out.
ifeq ($(call is-board-platform-in-list, $(UM_4_14_FAMILY)), true)
TARGET_USES_NON_LEGACY_POWERHAL ?= true
endif
