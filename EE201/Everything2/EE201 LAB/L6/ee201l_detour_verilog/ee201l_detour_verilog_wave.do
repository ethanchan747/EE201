onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ee201_detour_sm_tb/Clk_tb
add wave -noupdate /ee201_detour_sm_tb/reset_tb
add wave -noupdate /ee201_detour_sm_tb/L_Rbar_tb
add wave -noupdate -radix hexadecimal /ee201_detour_sm_tb/UUT/state
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_I_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_R1_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_R12_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_R123_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_L1_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_L12_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/q_L123_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/GLL_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/GL_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/GR_tb
add wave -noupdate -radix binary /ee201_detour_sm_tb/GRR_tb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60000 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {420 ns}
