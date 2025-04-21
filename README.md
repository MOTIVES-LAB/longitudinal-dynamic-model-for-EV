# longitudinal-dynamic-model-for-EV
This repository contains a **Simulink-based simulation model** for the **longitudinal dynamics of an electric vehicle (EV)**, created as a demonstration example for **Chapter 12** of the following textbook:

> 袁新枚, 范涛. *车用电机原理及应用* [M]. 第2版. 机械工业出版社, 2024.  
> Yuan Xinmei, Fan Tao. *Principles and Applications of Automotive Electric Machines* (2nd Edition), China Machine Press, 2024.

The model describes the forward motion of an EV under various driving resistances and motor drive characteristics, and supports further development for control algorithm design, energy consumption analysis, and drive cycle evaluation.

---

## 📂 Repository Contents

| File/Folder         | Description |
|---------------------|-------------|
| `EV_mod.slx`        | Main **Simulink model** of the EV longitudinal dynamics, including traction force, resistances, battery, electric motor, transmission, and driver blocks |
| `EV_initial.m`      | Script to **initialize parameters** and **run the model** |
| `veh_mod.mat`       | Data file containing **vehicle parameters** (mass, tire radius, drag coefficient, etc.) |
| `mod_tabs.mat`      | Contains lookup tables such as **motor efficiency map**, **torque-speed envelope**, etc. |
| `NEDC.xlsx`         | **New European Driving Cycle (NEDC)** profile used as driving input |
| `README.md`         | Documentation for this repository (you’re reading it!) |

---

## 🚀 Getting Started

### Prerequisites

- MATLAB **R2010** or newer  
- Simulink  
- Spreadsheet Toolbox (for `.xlsx` input)

### How to Use

1. **Clone or download** this repository.
2. Open MATLAB and navigate to the repository folder.
3. Run the following script to initialize and launch the simulation:
   ```matlab
   EV_initial
   ```
   This script loads all necessary parameters, driving cycle, and lookup tables, and then runs the model.

4. (Optional) Open the Simulink model manually:
   ```matlab
   open('EV_mod.slx')
   ```

---


## 📘 Reference

This simulation example corresponds to the content in:

> 袁新枚, 范涛. *车用电机原理及应用* [M]. 第2版. 机械工业出版社, 2024.  
> Yuan Xinmei, Fan Tao. *Principles and Applications of Automotive Electric Machines* (2nd Edition), China Machine Press, 2024.

See **Chapter 12** for the theory behind longitudinal modeling, system equations.

---

---

## 📬 Contact

For issues or suggestions, feel free to open an issue on GitHub or contact the repository owner.

---
