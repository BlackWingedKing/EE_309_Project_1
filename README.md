# IITB - RISC Stage 1 

Multicycle RISC implementation

We support an ISA of 15 instructions, which may be found below - 

ADD RA, RB, RC

ADC RA, RB, RC

ADZ RA, RB, RC

ADI RA, RB, IMM

NDU RA, RB, RC

NDC RA, RB, RC

NDZ RA, RB, RZ

LHI RA, IMM

LW RA, RB, IMM

SW RA, RB, IMM

LM RA, REG

SM RA, REG

BEQ RA, RB, IMM

JAL RA, IMM

JLR RA, RB


The instructions are of three types - R type, I type and J type which have internally different implementations.
