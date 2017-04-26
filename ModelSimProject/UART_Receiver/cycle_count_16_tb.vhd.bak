-- cycle_count_16_tb.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity cycle_count_16_tb is
end entity cycle_count_16_tb;

architecture test of cycle_count_16_tb is
  
  component cycle_count_16
	port(clk :in std_logic;
			 r :in std_logic;
			 en:in std_logic;
			 h :out std_logic;
			 f :out std_logic);
  end component;
  
  signal clk, r, en, h, f : std_logic;
begin
  
  U1: cycle_count_16 port map(clk => clk,
             r => r,
             en => en,
             h => h,
             f => f);
             

  process
  begin
    -- Test Reset
    clk <= '0';          
    r <= '1'; en <= '1'; wait for 5 ns;
    clk <= '1';          wait for 5 ns;
    
    -- Test Count
    clk <= '0';
    r <= '0'; en <= '1'; wait for 5 ns;
    clk <= '1';          wait for 5 ns;
    
    -- Cycle the clock
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 1 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 2 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 3 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 4 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 5 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 6 count
    clk <= '0';          wait for 5 ns; 
    clk <= '1';          wait for 5 ns; -- 7 count
    clk <= '0';          wait for 5 ns;
    clk <= '1';          wait for 5 ns; -- 8 count 

    
    wait;
    
  end process;
end architecture test;