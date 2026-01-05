# VTOL-Altitude-PID-Control
PID altitude controller for a VTOL UAV developed in Simulink, featuring signal filtering and noise robustness testing.
This project features a high-fidelity 1D simulation of a Vertical Take-Off and Landing (VTOL) UAV's altitude control system. Developed in Simulink, the model implements a PID controller to track dynamic flight profiles while accounting for real-world constraints like sensor noise and actuator saturation.
Technical Architecture: The system is built with a closed-loop feedback architecture:Plant Model: A double-integrator transfer function ($1/ms^2$) representing the drone's vertical physics.Controller: A tuned PID controller designed to minimize steady-state error and settle-time.Signal Processing: A first-order low-pass filter ($\frac{1}{\tau s + 1}$) implemented to attenuate high-frequency noise introduced into the feedback loop.Mission Profile: Dynamic setpoints generated via the Simulink Signal Editor.
How to Run: Open initialize_drone.m in MATLAB to load the mass (m) and PID gains into the workspace. Open drone_sim.slx in Simulink. Ensure flight_mission.mat is in the same directory. Press Run.
![VTOL Altitude Tracking Results](Project_Files/Scope_Graph.pdf)

