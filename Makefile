VCS = vcs -V -sverilog +vc -Mupdate -line -full64 +vcs+vcdpluson -debug_pp
LIB = ./lib/FreePDK45/osu_soc/lib/files/gscl45nm.v

#Simulation
MOD_FOLDER = ./rtl
#TB_FOLDER = $(MOD_FOLDER)/testbench
SYNTH_FOLDER = $(MOD_FOLDER)/synth
MOD_NAME = cape

SIMFILES = $(wildcard ./$(MOD_FOLDER)/*.sv)
SIMFILES += verilog-lfsr/rtl/lfsr.v

#TESTBENCH = $(TB_FOLDER)/$(MOD_NAME)_tb.sv

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
	rm -f ./$(SYNTH_FOLDER)/$(MOD_NAME).vh

$(SYNFILE):
	dc_shell-t -f compile_dc.tcl
	mv ./$(MOD_NAME)* ./$(SYNTH_FOLDER)

simv:
	$(VCS) $(TESTBENCH) $(SIMFILES) -o simv +define+SIMULATION

syn_simv: $(SYNFILE)
	$(VCS) $(TESTBENCH) $(SYNFILE) $(LIB) -o syn_simv +define+SYNTHESIS

syn_only: remove $(SYNFILE)

sim:	remove simv
	./simv

sim_syn: syn_simv #force rebuild
	./syn_simv

simv_dve:	$(SIMFILES)	$(TESTBENCH)
	$(VCS) +memcbk $(TESTBENCH) $(SIMFILES) -o simv_dve -R -gui -kdb

remove_dve:
	rm -f ./simv_dve.daidir/.vcs.timestamp
	rm -f simv_dve

dve:	remove_dve simv_dve
	./simv_dve -gui