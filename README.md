# MIPS Instruction Fetch Testbench

This project simulates a simplified **MIPS-style Instruction Fetch (IF)** stage with supporting modules.  
The testbench (`tb_ifetch.v`) verifies normal operation and branch redirection behavior.

---

## Overview

The Instruction Fetch stage performs the following:
1. Reads the next instruction from instruction memory.
2. Increments the program counter by 4.
3. Redirects the PC when a branch or jump signal is asserted.

Modules included:
- **I_FETCH.v** – Top-level fetch unit integrating all submodules.
- **mux.v** – Chooses between sequential PC and branch target.
- **pc_counter.v** – Holds and updates the current PC.
- **memory.v** – Simple instruction memory.
- **if_id.v** – Pipeline register between IF and ID stages.
- **incrementer.v** – Computes PC + 4.
- **tb_ifetch.v** – Testbench controlling clock, reset, and branch inputs.

---


### Example Waverform
<img width="1704" height="1032" alt="image" src="https://github.com/user-attachments/assets/f00ae17d-420a-4722-bb72-948f4da3c422" />


