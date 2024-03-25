vlib work

vcom decoder_scancode_ascii.vhd
vcom tb_decoder_scancode.vhd
vcom decoder_scancode_ascii_map.vhd

vsim -voptargs="+acc=lprn" -t ns work.decoder_tb

add wave sim:/* 

run 1000 ns

