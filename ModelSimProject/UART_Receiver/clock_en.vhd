-- clock_en

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_arith.all;

entity clock_en is
	port (clk : in std_logic;
				en_out, en_out16 : std_logic);
end entity clock_en;

architecture behave of clock_en is

begin
	variable count1 : std_logic_vector(8 downto 0);
	variable count2 : std_logic_vector(3 downto 0);

	process (clk) 
	begin
		if (clk'event and clk = '1') then
			en_out := '0';
			en_out16 := '0';

			if (count1 = "101000101") then
				en_out16 := '1';
				count1 := '0000000000';

				if (count2 = "1111") then
					en_out := '1';
					count2 := '0';
				else
					count2 := count2 + '0001';
				end if;
			else
				count1 = count1 + '000000001';
			end if;
		end if;
	end process;
end architecture behave;