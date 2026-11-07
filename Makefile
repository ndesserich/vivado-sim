ifeq ($(OS),Windows_NT)
    SHELL := C:/Program Files/Git/bin/bash.exe
	VIVADO := C:/AMDDesignTools/2025.2/Vivado/bin/vivado.bat
else
    SHELL := /bin/bash
	VIVADO := vivado
endif

.PHONY: clean project sim

CLEAN_OBJS = *.log *.jou dfx_runtime.txt .Xil/ project/

project:
	$(VIVADO) -mode batch -source ./scripts/regen_project.tcl -log project.log -jou project.jou

sim:
	$(VIVADO) -mode batch -source ./scripts/sim.tcl -log sim.log -jou sim.jou

clean:
	rm -rf $(CLEAN_OBJS)
