# Lakeshore 224 EPICS IOC

EPICS IOC for Lakeshore 224 temperature monitor

## Build IOC
This IOC can be built following standard EPICS build procedure for IOCs.

To build and run this IOC, the following EPICS modules are required:

- Asyn
- StreamDevice

Then, the path to these modules must be set at [configure/RELEASE](/configure/RELEASE):

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
./run-lakeshore224.sh -D [DEVICE] -d [DEVICE_TYPE] -i [IP_ADDR (optional)] -t [TCP_PORT (optional)] -s [SERIAL_PORT (optional)] -b [BAUDRATE (optional)] -p [PARITY (optional)]
```
Where each option can be described by the following:

```
    -D                  Configure device name (prefix for PV names)" >&2
    -d                  Configure communication type (serial|tcp), default=tcp" >&2
    -i                  Optional: Configure lakeshore224 IP address" >&2
    -t                  Optional: Configure lakeshore224 TCP port" >&2
    -s                  Optional: Configure lakeshore224 serial port"
``` 

Documentation about Lakeshore 224 module and this IOC's PVs can be found at [/documentation](/documentation)