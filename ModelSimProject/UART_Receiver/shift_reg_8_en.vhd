-- shift_reg_8_en.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift_reg_8_en is
  port(din :in std_logic;
       clk :in std_logic;
       en  :in std_logic;
       dout:out std_logic_vector(7 downto 0));
end entity shift_reg_8_en;

architecture behave of shift_reg_8_en is
begin
  shift: process(clk)
  variable loc_dout : std_logic_vector(7 downto 0);
  begin
    if (clk'event and clk = '1') then
      if (en = '1') then
        loc_dout := din & loc_dout(7 downto 1);
        dout <= loc_dout;
      end if;
    end if;
  end process shift;
end architecture behave;