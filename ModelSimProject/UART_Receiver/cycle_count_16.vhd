-- cycle_count_16.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cycle_count_16 is
	port(clk :in std_logic;
			 r :in std_logic;
			 en:in std_logic;
			 h :out std_logic;
			 f :out std_logic);
end entity;

architecture behave of cycle_count_16 is
begin
	cnt: process(en, clk, r)
	  variable count : unsigned(4 downto 0);
	  
	begin
		if (clk'event and clk = '1') then
			if (en = '1') then
				h <= '0'; -- set up defaults for
				f <= '0'; -- outputs h and f
				if (r = '1') then
					count := "01111";
				else
					if (count > "00000") then
						count := count - "00001";
					end if;

					if (count <= "00111") then
						h <= '1'; -- half count reached
					end if;

					if (count = "00000") then
						f <= '1'; -- full count reached
					end if; 
				end if;
			end if;
		end if;
	end process;
end architecture behave;