# 🚀 Elevator Control System (FPGA + ModelSim + RTL Design)

This project implements a **multi-floor elevator control system** using **VHDL/Verilog**.  
It is designed to run on both **Intel DE1-SoC FPGA (Cyclone V 5CSEMA5F31C6N)** and **ModelSim** for simulation.

---

## 📁 Repository Structure

| Directory | Description |
|------------|-------------|
| **FPGA_Quartz/** | Contains the Quartus Prime project for the DE1-SoC FPGA board. The system is synthesized to run at 50 MHz and tested on Cyclone V. |
| **ModelSim_Simulation/** | Includes simulation files with a 1-cycle testbench clock for functional verification in ModelSim. |
| **System_Design/** | Contains the FSM (Finite State Machine) and RTL (Register Transfer Level) designs for the full system, along with diagrams and requirement documents. |

---

## ⚙️ System Overview

The elevator system supports multiple floors and models the real behavior of an elevator using FSM and timing logic.

### Core Components
- **FSM Controller** — Controls the elevator states: Idle, Moving Up, Moving Down, Door Open, etc.  
- **Floor Counter** — Tracks current floor and handles floor requests.  
- **Request Handler** — Processes user input for target floors.  
- **Timing Logic** — Simulates movement delay between floors.

---

## 🧪 Simulation

- Simulation environment: **ModelSim**  
- Testbench includes:
  - Floor request inputs
  - Timing control
  - State observation (waveforms)

To run:
```bash
vsim -do modelsim.do
