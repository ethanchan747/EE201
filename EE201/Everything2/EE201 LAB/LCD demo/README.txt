File name:                               		Description
==========                               		============
divider_combined_cu_dpu_with_single_step.v	example divider file (used in single-step demonstration)
divider_top_with_single_step_LCD.v			top module for user to make changes
lcd_screen_core.v                        		lcd controller module, not to be changed
divider_top_LCD.ucf					user constraints file
TA_divider_top.bit					bit file for demonstration


NOTE:
=====
0. Borrow an LCD panel (PmodCLP rev.B) from your TA and attach it to the Nexys-3 board to the two PMOD connectors 
   close to the power-on/off switch. Invoke Adept and download the bit file TA_divider_top.bit.
1. the lcd screen displays each event on the switches so we are continuously updating 
   the lcd.
2. in the top file we have used a function named bin2x to convert binary to 8 bit 
   ascii character 
3. on reset the values of 
  X = read switch 7 to 4
  Y = read switch 3 to 0
  Q = 0
  R = X
4. once data is set on switches, press start (btn1) to start doing the division
5. press SCEN (btn2) for single stepping
6. after verifying the result press ack (btn0) before setting up a new value 
   (so as to return to the initial state).


