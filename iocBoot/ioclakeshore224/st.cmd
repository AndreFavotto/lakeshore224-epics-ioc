#!../../bin/linux-x86_64/lakeshore224

#- You may have to change lakeshore224 to something else
#- everywhere it appears in this file

< envPaths
epicsEnvSet ("STREAM_PROTOCOL_PATH","$(TOP)/lakeshore224App/Db")

drvAsynIPPortConfigure ("lakeshore224", "$(PORT)")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/lakeshore224.dbd"
lakeshore224_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/ls224.db","DEVICE=$(DEVICE), PORT=$(PORT)")

dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=A, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=B, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C1, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C2, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C3, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C4, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C5, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D1, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D2, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D3, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D4, PORT=$(PORT)")
dbLoadRecords("db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D5, PORT=$(PORT)")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=andrefavoto"
