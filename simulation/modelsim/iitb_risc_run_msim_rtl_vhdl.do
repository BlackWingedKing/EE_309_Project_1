transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/and_1_16.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/subtractor.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/full_sub.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/adder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/full_adder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/nand16.vhd}
vcom -93 -work work {/home/ritesh/Desktop/github/IITB_RISC/alu.vhd}

