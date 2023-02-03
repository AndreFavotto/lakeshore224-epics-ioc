#!../../bin/linux-x86_64/lakeshore224

#- You may have to change lakeshore224 to something else
#- everywhere it appears in this file

< envPaths
epicsEnvSet ("STREAM_PROTOCOL_PATH","$(TOP)/lakeshore224App/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/lakeshore224.dbd"
lakeshore224_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=andrefavoto")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=andrefavoto"
