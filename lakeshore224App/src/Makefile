TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = lakeshore224
# lakeshore224.dbd will be created and installed
DBD += lakeshore224.dbd

# lakeshore224.dbd will be made up from these files:
lakeshore224_DBD += base.dbd

# Include dbd files from all support applications:
#lakeshore224_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#lakeshore224_LIBS += xxx

# lakeshore224_registerRecordDeviceDriver.cpp derives from lakeshore224.dbd
lakeshore224_SRCS += lakeshore224_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
lakeshore224_SRCS_DEFAULT += lakeshore224Main.cpp
lakeshore224_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#lakeshore224_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
lakeshore224_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

lakeshore224_DBD += stream.dbd
lakeshore224_DBD += asyn.dbd
lakeshore224_DBD += drvAsynSerialPort.dbd
lakeshore224_DBD += calcSupport.dbd
lakeshore224_DBD += asSupport.dbd

lakeshore224_LIBS += stream
lakeshore224_LIBS += asyn
lakeshore224_LIBS += calc
lakeshore224_LIBS += autosave