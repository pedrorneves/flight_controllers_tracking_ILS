# flight_controllers_tracking_ILS

Developed by: Pedro Neves and Pedro Timóteo (BSc Flight Control course project).

I co-developed automatic flight controllers for a Gulfstream V aircraft which follow reference airspeed and ascent speed values, and which land the airplane using Instrument Landing System (ILS).

Firstly, it is necessary to run the 'GulfV_main.m' script. Then, open Simulink and run:

'controlo_atitude_GulfVsim.slx' -> to analyze the closed-loop system without sensors and actuators and how vehicle dynamics parameters, such as longitudinal speed, pitch angle, elevator deflection and thrust, change in time;

'controlo_atitude_sens_atuad_GulfVsim.slx' -> to analyze the closed-loop system with sensors and actuators and how vehicle dynamics parameters, such as longitudinal speed, pitch angle, elevator deflection and thrust, change in time;

'aterragem_ILS_GulfVsim.slx' -> to analyze the landing of the airplane using ILS.

