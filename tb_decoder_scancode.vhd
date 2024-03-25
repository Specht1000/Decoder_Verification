-- Prof. Marlon Moraes
-- marlon.moraes@pucrs.br

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.std_logic_arith.all;
	
entity decoder_tb is
	-- isto é um testbench e por isso não tem portas!
end decoder_tb;

architecture tb of decoder_tb is

	signal	tb_scancode_in	: std_logic_vector(7 downto 0) := "00010000";
	signal	tb_ascii_out_duv	: std_logic_vector(7 downto 0) := "00000000";
	signal	tb_ascii_out_golden	: std_logic_vector(7 downto 0) := "00000000";
	signal	tb_error : std_logic := '0';

begin

	golden: entity work.decoder
	port map
	(
		scancode_in 	=> tb_scancode_in,
	    ascii_out		=> tb_ascii_out_golden
	);
	duv: entity work.decoder_scancode_ascii
	port map
	(
		scancode_in 	=> tb_scancode_in,
	    ascii_out		=> tb_ascii_out_duv
	);

	process
	begin
		wait for 10 ns;
		tb_scancode_in <= tb_scancode_in + 1;
	end process;

	check: process
	begin
		wait for 5 ns;
			assert tb_ascii_out_duv = tb_ascii_out_golden report("existe uma diferenca"); 

			assert tb_ascii_out_duv(0) = tb_ascii_out_golden(0) report("existe uma diferenca no 0"); 
			assert tb_ascii_out_duv(1) = tb_ascii_out_golden(1) report("existe uma diferenca no 1"); 
			assert tb_ascii_out_duv(2) = tb_ascii_out_golden(2) report("existe uma diferenca no 2"); 
			assert tb_ascii_out_duv(3) = tb_ascii_out_golden(3) report("existe uma diferenca no 3"); 
			assert tb_ascii_out_duv(4) = tb_ascii_out_golden(4) report("existe uma diferenca no 4"); 
			assert tb_ascii_out_duv(5) = tb_ascii_out_golden(5) report("existe uma diferenca no 5"); 
			assert tb_ascii_out_duv(6) = tb_ascii_out_golden(6) report("existe uma diferenca no 6"); 
			assert tb_ascii_out_duv(7) = tb_ascii_out_golden(7) report("existe uma diferenca no 7"); 



		wait for 5 ns;

	end process check;



	tb_error <= '1' when tb_ascii_out_duv /= tb_ascii_out_golden else
				'0';


end tb;
