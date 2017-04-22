-- shift_reg_8_en_tb.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity shift_reg_8_en_tb is
end entity shift_reg_8_en_tb;

architecture test of shift_reg_8_en_tb is
  
  component shift_reg_8_en
	port(din :in std_logic;
       clk :in std_logic;
       en  :in std_logic;
       dout:out std_logic_vector(7 downto 0));
  end component;
  
  signal din, clk, en : std_logic;
  signal dout : std_logic_vector(7 downto 0);
  
begin
  
  U1: shift_reg_8_en 
    port map(din => din,
             clk => clk,
             en => en,
             dout => dout);
             

  process
  begin
    
    -- Cycle the clock
    clk <= '0';            wait for 5 ns; 
    din <= '1'; en <= '1'; wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 1 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 2 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 3 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 4 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 5 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 6 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 7 count
    clk <= '0';            wait for 5 ns; 
    din <= '0';            wait for 5 ns;
    clk <= '1';            wait for 5 ns; -- 8 count

    
    wait;
    
  end process;
end architecture test;