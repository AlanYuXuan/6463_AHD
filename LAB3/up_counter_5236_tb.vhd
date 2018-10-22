library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity up_counter_5236_tb is
end up_counter_5236_tb;

architecture tb of up_counter_5236_tb is
    constant T : time := 10 ns;

    signal sysclk : std_logic := '0';
    signal reset : std_logic := '0';
    signal counter : std_logic_vector(5 downto 0);
    signal seg_sel : std_logic_vector(7 downto 0);
    signal seg_val : std_logic_vector(7 downto 0);
begin
    UUT : entity work.up_counter_5236 port map (
        sysclk => sysclk,
        reset => reset,
        counter => counter,
        seg_sel => seg_sel,
        seg_val => seg_val
    );
    reset <= '1', '0' after 30 sec, '1' after 31 sec;
    process
    begin
        sysclk <= not sysclk;
        wait for T/2;
    end process;
end tb;