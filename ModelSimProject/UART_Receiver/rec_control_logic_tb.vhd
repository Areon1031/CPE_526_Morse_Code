-- rec_control_logic_tb.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

entity rec_control_logic_tb is
end entity rec_control_logic_tb;

architecture test of rec_control_logic_tb is
  
  component rec_control_logic
	port(d :in boolean;
			 clk :in std_logic;
			 en :in boolean;
			 h :in boolean;
			 f :in boolean;
			 s :out bit;
			 l :out bit;
			 r :out bit);
  end component;
  
  signal d, en, h, f : boolean;
  signal s, l, r : bit;
  signal clk : std_logic;
  
begin
  
  U1: rec_control_logic 
    port map(d => d,
             clk => clk,
             en => en,
             h => h,
             f => f,
             s => s,
             l => l,
             r => r);
             

  process
  begin
    
    -- Cycle the clock
    -- Send the letter 'a' 01100001
    
    -- State 0000
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; 
    clk <= '1';               wait for 5 ns;
    
    -- State 0001
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; h <= TRUE;
    clk <= '1';               wait for 5 ns; -- 1 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0010
    clk <= '0';               wait for 5 ns; 
    d   <= TRUE; en <= TRUE; h <= FALSE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 2 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0011
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 3 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0100
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 4 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0101
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 5 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0110
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 6 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 0111
    clk <= '0';               wait for 5 ns; 
    d   <= TRUE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 7 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 1000
    clk <= '0';               wait for 5 ns; 
    d   <= TRUE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 8 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 1001
    clk <= '0';               wait for 5 ns; 
    d   <= FALSE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 9 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;
    
    -- State 1010
    clk <= '0';               wait for 5 ns; 
    d   <= TRUE; en <= TRUE; f <= TRUE;
    clk <= '1';               wait for 5 ns; -- 10 count
    
    -- Wait cycle
    clk <= '0';               wait for 5 ns;
    en <= FALSE;
    clk <= '1';               wait for 5 ns;

    
    wait;
    
  end process;
end architecture test;