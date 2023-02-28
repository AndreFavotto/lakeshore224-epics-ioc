#!../../bin/linux-x86_64/lakeshore224

#- You may have to change lakeshore224 to something else
#- everywhere it appears in this file

< envPaths
epicsEnvSet ("STREAM_PROTOCOL_PATH","$(TOP)/lakeshore224App/Db")
epicsEnvSet ("LSPORT","lakeshore224")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/lakeshore224.dbd"
lakeshore224_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("$(LSPORT)", "$(IP_ADDR):$(TCP_PORT) TCP",0,0,0)

## Load record instances
dbLoadRecords("lakeshore224App/Db/ls224.db","DEVICE=$(DEVICE), PORT=$(LSPORT)")

dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=A, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=B, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C1, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C2, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C3, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C4, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=C5, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D1, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D2, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D3, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D4, PORT=$(LSPORT)")
dbLoadRecords("lakeshore224App/Db/ls224inputs.db","DEVICE=$(DEVICE), INPUT=D5, PORT=$(LSPORT)")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=andrefavoto"
