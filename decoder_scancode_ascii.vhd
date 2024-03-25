-- Prof. Marlon Moraes
-- marlon.moraes@pucrs.br

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY decoder IS
    PORT (
        scancode_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        ascii_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

    );
END decoder;

ARCHITECTURE decoder OF decoder IS

BEGIN

    -- todas as entradas de um circuito combinacional
    -- devem aparecer na maldita lista de sensibilidade
    -- não posso me esquecer disto!
    proc_maneiro : PROCESS (scancode_in)
    BEGIN
        IF scancode_in = x"16" THEN
            ascii_out <=x"31";
        ELSIF scancode_in = x"1E" THEN
            ascii_out <= x"32";
        ELSIF scancode_in = x"26" THEN
            ascii_out <= x"33";
        ELSIF scancode_in = x"25" THEN
            ascii_out <= x"34";
        ELSIF scancode_in = x"2E" THEN
            ascii_out <= x"35";
        ELSIF scancode_in = x"36" THEN
            ascii_out <= x"36";
        ELSIF scancode_in = x"3D" THEN
            ascii_out <= x"37";
        ELSIF scancode_in = x"3E" THEN
            ascii_out <= x"38";
        ELSIF scancode_in = x"46" THEN
            ascii_out <= x"39";
        ELSIF scancode_in = x"45" THEN
            ascii_out <= x"30";
        ELSIF scancode_in = x"1C" THEN
            ascii_out <= x"41";
        ELSIF scancode_in = x"32" THEN
            ascii_out <= x"42";
        ELSIF scancode_in = x"21" THEN
            ascii_out <= x"43";
        ELSIF scancode_in = x"23" THEN
            ascii_out <= x"44";
        ELSIF scancode_in = x"24" THEN
            ascii_out <= x"45"; 
        ELSIF scancode_in = x"2B" THEN
            ascii_out <= x"46";
        ELSIF scancode_in = x"34" THEN
            ascii_out <= x"47";
        ELSIF scancode_in = x"33" THEN
            ascii_out <= x"48";
        ELSIF scancode_in = x"43" THEN
            ascii_out <= x"49";
        ELSIF scancode_in = x"3B" THEN
            ascii_out <= x"4A";
        ELSIF scancode_in = x"42" THEN
            ascii_out <= x"4B";
        ELSIF scancode_in = x"4B" THEN
            ascii_out <= x"4C";
        ELSIF scancode_in = x"3A" THEN
            ascii_out <= x"4D";
        ELSIF scancode_in = x"31" THEN
            ascii_out <= x"4E";
        ELSIF scancode_in = x"44" THEN
            ascii_out <= x"4F";
        ELSIF scancode_in = x"4D" THEN
            ascii_out <= x"50";
        ELSIF scancode_in = x"15" THEN
            ascii_out <= x"51";
        ELSIF scancode_in = x"2D" THEN
            ascii_out <= x"52";
        ELSIF scancode_in = x"1B" THEN
            ascii_out <= x"53";
        ELSIF scancode_in = x"2C" THEN
            ascii_out <= x"54";
        ELSIF scancode_in = x"3C" THEN
            ascii_out <= x"55";
        ELSIF scancode_in = x"2A" THEN
            ascii_out <= x"56";
        ELSIF scancode_in = x"1D" THEN
            ascii_out <= x"57";
        ELSIF scancode_in = x"22" THEN
            ascii_out <= x"58";
        ELSIF scancode_in = x"35" THEN
            ascii_out <= x"59";
        ELSIF scancode_in = x"1A" THEN
            ascii_out <= x"5A";
        ELSE
            ascii_out <= (OTHERS => '1');
        END IF;
    END PROCESS proc_maneiro;

END decoder;
