include $(MAKE_INCLUDE_GEN)

.PHONY: lib clean

#*****************************************************************************#
#                               VARIABLES	                              #
#*****************************************************************************#
DIR = $(BASEDIR)/component/application/wifi-audio/foundation

MODULE_IFLAGS += -I$(BASEDIR)/component/application/wifi-audio/base/log/include
MODULE_IFLAGS += -I$(BASEDIR)/component/application/wifi-audio/base/cutils/include
MODULE_IFLAGS += -I$(BASEDIR)/component/application/wifi-audio/base/utils/include
MODULE_IFLAGS += -I$(DIR)/include

vpath %.cpp $(shell find $(DIR) -type d)
#*****************************************************************************#
#                               CFLAGS                                        #
#*****************************************************************************#
GLOBAL_CFLAGS += -D__RTOS__ -Wno-multichar -Wno-unused-parameter -Werror

#*****************************************************************************#
#                               Source FILE LIST                              #
#*****************************************************************************#
CPPSRC  = $(DIR)/rstring.cpp
CPPSRC += $(DIR)/hexdump.cpp
CPPSRC += $(DIR)/rbuffer.cpp
CPPSRC += $(DIR)/rhandler.cpp
CPPSRC += $(DIR)/rlooper.cpp
CPPSRC += $(DIR)/rlooper_manager.cpp
CPPSRC += $(DIR)/rmessage.cpp

#*****************************************************************************#
#                               Object FILE LIST                              #
#*****************************************************************************#
OBJS = $(notdir $(CPPSRC:.cpp=.o))

#*****************************************************************************#
#                        RULES TO GENERATE TARGETS                            #
#*****************************************************************************#

# Define the Rules to build the core targets
COPY_RAM_OBJS: CORE_TARGETS
lib: COPY_RAM_OBJS
	cp *.o  ../../xip

#*****************************************************************************#
#              GENERATE OBJECT FILE
#*****************************************************************************#
CORE_TARGETS: $(OBJS)

#*****************************************************************************#
#                        RULES TO CLEAN TARGETS                               #
#*****************************************************************************#
clean: CLEAN_OBJS
	$(call CLEAN_FUNC)

-include $(DEPS)