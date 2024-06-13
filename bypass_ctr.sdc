###################################################################

# Created by write_sdc on Mon Jun 10 12:55:35 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports clk]
set_driving_cell -lib_cell INVX1 [get_ports rst_n]
set_driving_cell -lib_cell INVX1 [get_ports {bp[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {bp[0]}]
create_clock [get_ports clk]  -period 2  -waveform {0 1}
set_input_delay -clock clk  0.1  [get_ports rst_n]
set_input_delay -clock clk  0.1  [get_ports {bp[7]}]
set_input_delay -clock clk  0.1  [get_ports {bp[6]}]
set_input_delay -clock clk  0.1  [get_ports {bp[5]}]
set_input_delay -clock clk  0.1  [get_ports {bp[4]}]
set_input_delay -clock clk  0.1  [get_ports {bp[3]}]
set_input_delay -clock clk  0.1  [get_ports {bp[2]}]
set_input_delay -clock clk  0.1  [get_ports {bp[1]}]
set_input_delay -clock clk  0.1  [get_ports {bp[0]}]
set_output_delay -clock clk  0.1  [get_ports ovf]
set_output_delay -clock clk  0.1  [get_ports {cnt[7]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[6]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[5]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[4]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[3]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[2]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[1]}]
set_output_delay -clock clk  0.1  [get_ports {cnt[0]}]
