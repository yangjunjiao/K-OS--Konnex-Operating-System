
%module Os_Ctr

%include "typemaps.i"
%include "Types.i"

#define KOS_MEMORY_MAPPING  STD_OFF

%{
#define KOS_MEMORY_MAPPING  STD_OFF
#include "Osek.h"

StatusType  InitCounter(CounterType CounterID, TickType InitialValue);
StatusType  IncrementCounter(CounterType CounterID);
StatusType  GetCounterInfo(CounterType CounterID, CtrInfoRefType Info);
StatusType  GetCounterValue(CounterType CounterID, TickRefType Value);
StatusType  GetElapsedCounterValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue);
void OsCtr_InitCounters(void);
%}

StatusType  InitCounter(CounterType CounterID, TickType InitialValue);
StatusType  IncrementCounter(CounterType CounterID);
StatusType  GetCounterInfo(CounterType CounterID, CtrInfoType * OUTPUT);
StatusType  GetCounterValue(CounterType CounterID, TickType * OUTPUT);
StatusType  GetElapsedCounterValue(CounterType CounterID, TickType * OUTPUT, TickType * OUTPUT);
void OsCtr_InitCounters(void);

