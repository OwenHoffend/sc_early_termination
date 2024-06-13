###################################################################

# Created by write_sdc on Mon Jun 10 12:57:13 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports {Bx[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {Bx[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {trunc[0]}]
create_clock -name vclk  -period 2  -waveform {0 1}
set_input_delay -clock vclk  0.1  [get_ports {Bx[7]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[6]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[5]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[4]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[3]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[2]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[1]}]
set_input_delay -clock vclk  0.1  [get_ports {Bx[0]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[7]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[6]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[5]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[4]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[3]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[2]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[1]}]
set_input_delay -clock vclk  0.1  [get_ports {trunc[0]}]
set_output_delay -clock vclk  0.1  [get_ports {z[7]}]
set_output_delay -clock vclk  0.1  [get_ports {z[6]}]
set_output_delay -clock vclk  0.1  [get_ports {z[5]}]
set_output_delay -clock vclk  0.1  [get_ports {z[4]}]
set_output_delay -clock vclk  0.1  [get_ports {z[3]}]
set_output_delay -clock vclk  0.1  [get_ports {z[2]}]
set_output_delay -clock vclk  0.1  [get_ports {z[1]}]
set_output_delay -clock vclk  0.1  [get_ports {z[0]}]
