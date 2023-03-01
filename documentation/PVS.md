# PV List and description
This document describes all available PVs and functionalities on this IOC. Note that \<devicename> is the PV prefix defined on startup, and \<input> is the referred input of the module, which can be A, B, C1-C5 and D1-D5.

One can see [223 manual](./224_manual.pdf) for reference on usage or meaning of all of the functions and parameters defined below.

## General information
- **\<devicename>ID-Cte**  
Returns full module identification

- **\<devicename>Model-Cte**  
Parse only the model name from full module identification

- **\<devicename>SerNumb-Cte**  
Returns module's serial number

- **\<devicename>FirmwareVersion-RB**  
Returns module's current firmware version

## Input-specific readings

- **\<devicename>\<input>Name-RB**  
Returns name defined for the referred input.

- **\<devicename>\<input>Name-Cmd**  
Defines name for the referred input.

- **\<devicename>\<input>Status-Mon**  
Returns general status for the referred input reading value.

- **\<devicename>\<input>Temp-Mon**  
Returns temperature reading for the referred input \[Kelvin].
  
- **\<devicename>\<input>InpVolt-Mon**  
Returns the voltage reading for the referred input.

- **\<devicename>\<input>InpCrv-Sts**  
Returns the sensor curve selected for the referred input.

- **\<devicename>\<input>InpTypeSensor-Sts**  
Returns the sensor type for the referred input.
  
- **\<devicename>\<input>InpTypeRange-RB**  
Returns the sensor range defined for the referred input.
  
- **\<devicename>\<input>InpTypeEGU-RB**  
Returns the sensor engineering units for the referred input.
  
- **\<devicename>\<input>InpTypeAR-RB**  
Returns the Auto Range status for the referred input.
  
- **\<devicename>\<input>InpTypeCompens-RB**  
Returns the compensation status for the referred input.

## Alarms

- **\<devicename>\<input>AlrmRst-Cmd**  
Reset all alarms.

- **\<devicename>\<input>AlrmOnOff-RB** and **\<devicename>\<input>AlrmOnOff-Cmd**  
Read and define, respectively, On/Off status of the alarm.
  
- **\<devicename>\<input>AlrmHighVal-RB** and **\<devicename>\<input>AlrmHighVal-SP**  
Read and define, respectively, High Value trigger of the alarm.

- **\<devicename>\<input>AlrmLowVal-RB**  and **\<devicename>\<input>AlrmLowVal-SP**  
Read and define, respectively, Low Value trigger of the alarm.

- **\<devicename>\<input>AlrmDeadBand-RB** and **\<devicename>\<input>AlrmDeadBand-SP**  
Read and define, respectively, the DeadBand of the alarm.

- **\<devicename>\<input>AlrmLatchEnbl-RB** and **\<devicename>\<input>AlrmLatchEnbl-Cmd**  
Read and define, respectively, the Latch's On/Off status of the alarm.

- **\<devicename>\<input>AlrmAudible-RB**  and **\<devicename>\<input>AlrmAudible-Cmd**  
Read and define, respectively, if alarm is audible trough Lakeshore 224 internal speaker.


- **\<devicename>\<input>AlrmVisible-RB** and **\<devicename>\<input>AlrmVisible-Cmd**  
Read and define, respectively, if alarm is visible trough Lakeshore 224 frontal panel's led.


## Relays

Here, \<n> represents the referred relay, which can be 1 or 2 for lakeshore 224.

- **\<devicename>Relay\<n>Mode-Sts** and **\<devicename>Relay\<n>Mode-Sel**  
Read and define, respectively, operation mode of the referred Relay.

- **\<devicename>Relay\<n>AlrmType-Sts**  and **\<devicename>Relay\<n>AlrmType-Sel**  
Read and define, respectively, which type of alarm (high/low/both) triggers referred relay.

- **\<devicename>Relay\<n>InpTrig-Sts** and **\<devicename>Relay\<n>InpTrig-Sel**  
Read and define, respectively, which of the inputs triggers referred relay.
