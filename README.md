
---

## Introduction

### Mueller Matrix Calculation Program

This Fortran program calculates the Mueller matrix for a system based on polarization states of light using user-provided input angles and values for various polarization parameters.

---

### How to Use

#### Prerequisites:
- A Fortran compiler (e.g., `gfortran`)
- A command line terminal

#### Compilation:
Compile the program with the following command:

```bash
gfortran main.f90 -o mueller_matrix 
```

#### Running the Program:
After compilation, run the program by entering:

```bash
./mueller_matrix
```

#### Input:
The program will prompt you for input in two steps:
1. **Angles** for polarization states (in degrees): 
   - HO, VO, PO, MO, LO, RO, OH, OV, HH, VV, PH, MV
2. **Values** for specific polarization parameters:
   - HV, VH, PV, MH, LH_RV, LV_RH

### Example Input:
```
Enter angles for HO, VO, PO, MO, LO, RO, OH, OV, HH, VV, PH, MV (in degrees):
30 60 45 30 90 120 45 60 90 45 30 60

Enter values for HV, VH, PV, MH, LH_RV, LV_RH:
0.5 0.5 0.3 0.3 0.4 0.4
```

---

### Terms Explained

1. **HO**: Horizontal Output Polarization
2. **VO**: Vertical Output Polarization
3. **PO**: Polarization Output at an arbitrary plane
4. **MO**: Another polarization output state for comparison with PO
5. **LO**: Left circular polarization output
6. **RO**: Right circular polarization output
7. **OH**: Horizontal Input Polarization
8. **OV**: Vertical Input Polarization
9. **HH**: Horizontal input and horizontal output polarization
10. **VV**: Vertical input and vertical output polarization
11. **PH**: Polarization input at an arbitrary angle and horizontal output
12. **MV**: Mixed polarization input and vertical output
13. **HV, VH**: Horizontal and Vertical cross-polarized input/output (used to represent cross-polarization effects)
14. **PV**: Polarization at an arbitrary angle with vertical output
15. **MH**: Mixed polarization input with horizontal output
16. **LH_RV, LV_RH**: Represent left-hand circular to right-hand circular polarization interactions

---

### Output:

The program will output a 4x4 Mueller matrix based on the entered angles and polarization values.

### Resources

- Taken from Diffuse backscattering Mueller matrices of highly scattering media paper by Andreas H. Hielscher
![His Work](https://github.com/user-attachments/assets/d28615c6-6baa-4938-a977-0414fac345da)

---
