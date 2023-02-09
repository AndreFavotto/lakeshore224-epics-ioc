# Lakeshore 224 EPICS IOC

EPICS IOC for Lakeshore 224 temperature monitor

## Build IOC
This IOC can be built following standard EPICS build procedure for IOCs.

To build and run this IOC, the following EPICS modules are required:

- Asyn
- StreamDevice

Then, the path to these modules must be set at `configure/RELEASE`:

```
....
MODULES = /<path>/<to>/<modules>
ASYN = $(MODULES)/<path>/<to>/<asyn>
STREAM = $(MODULES)/<path>/<to>/<StreamDevice>
....
EPICS_BASE = /<path>/<to>/<epics>/<base>
....
```
After this, run `make install` from IOCs main directory.

## Run IOC

To execute the IOC, run:

```
cd /iocBoot/ioclakeshore224
./run-lakeshore224.sh -p PORT -d DEVICENAME
```