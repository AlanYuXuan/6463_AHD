library	ieee;
use	ieee.std_logic_1164.all;

entity right_rotate is
    port (a: in std_logic_vector(31 downto 0);
	   b: in std_logic_vector(31 downto 0);
 	   o: out std_logic_vector(31 downto 0));
end right_rotate;

architecture rtl of right_rotate is
begin
    with b(4 downto 0) select
    o<=	a(0) & a(31 downto 1) when "00001",
        a(1 downto 0) & a(31 downto 2) when "00010",
        a(2 downto 0) & a(31 downto 3) when "00011",
        a(3 downto 0) & a(31 downto 4) when "00100",
        a(4 downto 0) & a(31 downto 5) when "00101",
        a(5 downto 0) & a(31 downto 6) when "00110",
        a(6 downto 0) & a(31 downto 7) when "00111",
        a(7 downto 0) & a(31 downto 8) when "01000",
        a(8 downto 0) & a(31 downto 9) when "01001",
        a(9 downto 0) & a(31 downto 10) when "01010",
        a(10 downto 0) & a(31 downto 11) when "01011",
        a(11 downto 0) & a(31 downto 12) when "01100",
        a(12 downto 0) & a(31 downto 13) when "01101",
        a(13 downto 0) & a(31 downto 14) when "01110",
        a(14 downto 0) & a(31 downto 15) when "01111",
        a(15 downto 0) & a(31 downto 16) when "10000",
        a(16 downto 0) & a(31 downto 17) when "10001",
        a(17 downto 0) & a(31 downto 18) when "10010",
        a(18 downto 0) & a(31 downto 19) when "10011",
        a(19 downto 0) & a(31 downto 20) when "10100",
        a(20 downto 0) & a(31 downto 21) when "10101",
        a(21 downto 0) & a(31 downto 22) when "10110",
        a(22 downto 0) & a(31 downto 23) when "10111",
        a(23 downto 0) & a(31 downto 24) when "11000",
        a(24 downto 0) & a(31 downto 25) when "11001",
        a(25 downto 0) & a(31 downto 26) when "11010",
        a(26 downto 0) & a(31 downto 27) when "11011",
        a(27 downto 0) & a(31 downto 28) when "11100",
        a(28 downto 0) & a(31 downto 29) when "11101",
        a(29 downto 0) & a(31 downto 30) when "11110",
        a(30 downto 0) & a(31) when "11111",
        a when others;
end rtl;