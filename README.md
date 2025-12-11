# pipeLine-risc-v

A synthesizable, 32-bit RISC-V processor implementing the classic 5-stage pipeline. Designed for efficient instruction throughput with full hazard handling.

The 5 Pipeline Stages

    IF (Instruction Fetch): Updates PC, fetches instruction from Imem.

    ID (Instruction Decode): Decodes opcode, reads Register File, extends immediates.

    EX (Execute): ALU operations, branch target calculation.

    MEM (Memory Access): Reads/Writes to Data Memory (Load/Store).

    WB (Writeback): Writes result back to Register File.