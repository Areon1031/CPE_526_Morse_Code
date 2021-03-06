-- uarec.vhd

-- this module is made up of 3 other modules
-- cycle_count_16
-- rec_control_logic
-- shift_reg_8_en

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

entity uarec is
  port (en : in std_logic;
        clk: in std_logic;
        ser_in: in std_logic;
        dout :  out std_logic_vector(7 downto 0);
        en_out: out std_logic);
end entity uarec;

architecture behave of uarec is
  signal n0, n1, n2, n3 : std_logic;
  
  component cycle_count_16
    	port(clk :in std_logic;
			 r :in std_logic;
			 en:in std_logic;
			 h :out std_logic;
			 f :out std_logic);
	end component;
	
	component rec_control_logic
	  	port(d :in std_logic;
			 clk :in std_logic;
			 en :in std_logic;
			 h :in std_logic;
			 f :in std_logic;
			 s :out std_logic;
			 l :out std_logic;
			 r :out std_logic);
	end component;
	
	component shift_reg_8_en
	    port(din :in std_logic;
       clk :in std_logic;
       en  :in std_logic;
       dout:out std_logic_vector(7 downto 0));
  end component;
  
begin
  
  L1: cycle_count_16
    port map(clk => clk, r => n0, en => en, h => n1, f => n2);
      
  L2: rec_control_logic
    port map(d => ser_in, clk => clk, en => en, h => n1, f => n2,
             s => n3, l => en_out, r => n0);
             
  L3: shift_reg_8_en
    port map(din => ser_in, clk => clk, en => n3, dout => dout);
      
end architecture behave;