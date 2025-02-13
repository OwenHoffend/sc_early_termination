VCS = vcs -V -sverilog +vc -Mupdate -line -full64 +vcs+vcdpluson -debug_pp
LIB = ./lib/FreePDK45/osu_soc/lib/files/gscl45nm.v

#Simulation
MOD_FOLDER = ./rtl
TB_FOLDER = ./tb
SYNTH_FOLDER = ./synth
MOD_NAME = vsbc

#SIMFILES = $(wildcard ./$(MOD_FOLDER)/*.sv)
#SIMFILES += verilog-lfsr/rtl/lfsr.v
#SIMFILES = ./$(MOD_FOLDER)/lzd.sv
#SIMFILES += ./$(MOD_FOLDER)/tzd.sv
#SIMFILES += ./$(MOD_FOLDER)/prb.sv
#SIMFILES += ./$(MOD_FOLDER)/therm_to_onehot.sv
SIMFILES += ./$(MOD_FOLDER)/vsbc.sv

TESTBENCH = $(TB_FOLDER)/$(MOD_NAME)_tb.sv

#Synthesis
SYNFILE = $(SYNTH_FOLDER)/$(MOD_NAME).vh

#passed through to tcl script
export MOD_NAME
export SIMFILES

remove:
	rm -f ./simv
	rm -f ./simv.daidir/.vcs.timestamp
	rm -f ./syn_simv.daidir/.vcs.timestamp
	rm -f ./syn_simv
	rm -f $(SYNFILE)

$(SYNFILE):
	dc_shell-t -f compile_dc.tcl
	mv ./$(MOD_NAME).vh ./$(SYNTH_FOLDER)
	mv ./$(MOD_NAME).sdc ./$(SYNTH_FOLDER)

simv:
	$(VCS) $(TESTBENCH) $(SIMFILES) -o simv +define+SIMULATION

syn_simv: $(SYNFILE)
	$(VCS) $(TESTBENCH) $(SYNFILE) $(LIB) -o syn_simv +define+SYNTHESIS

syn_only: remove $(SYNFILE)

sim: remove simv
	./simv

sim_syn: remove syn_simv #force rebuild
	./syn_simv

simv_dve: $(SIMFILES) $(TESTBENCH)
	$(VCS) +memcbk $(TESTBENCH) $(SIMFILES) -o simv_dve -R -gui -kdb

remove_dve:
	rm -f ./simv_dve.daidir/.vcs.timestamp
	rm -f simv_dve

dve:	remove_dve simv_dve
	./simv_dve -gui
