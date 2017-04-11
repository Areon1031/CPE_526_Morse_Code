-- rec_control_logic.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

entity rec_control_logic is
	port(d :in std_logic;
			 clk :in std_logic;
			 en :in std_logic;
			 h :in std_logic;
			 f :in std_logic;
			 s :out std_logic;
			 l :out std_logic;
			 r :out std_logic);
end entity rec_control_logic;

architecture behave of rec_control_logic is
  signal state, next_state : std_logic_vector(3 downto 0);
  
begin
  -- Handle the clk
  process (clk)
  begin
    if(clk'event and clk = '1') then
      state <= next_state;
    end if;
  end process;	
  
  --Handle the states
  process(state, en, d, h, f)
  begin
    case (state) is
    
    -- 0
    when ("0000") =>
      if ((not en)) or ((en and d)) then
        next_state <= "0000";
        r <= '0';
        s <= '0';
        l <= '0';
      else
        next_state <= "0001";
        r <= '1';
        s <= '0';
        l <= '0';
      end if;
      
    -- 1
    when ("0001") =>
      if (en and d) then
        next_state <= "0000";
        r <= '0';
        s <= '0';
        l <= '0';
      elsif(en and (not d) and h) then
        next_state <= "0010";
        r <= '1';
        s <= '0';
        l <= '0';
      else
        next_state <= "0001";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 2
    when ("0010") =>
      if (en and f) then
        next_state <= "0011";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0010";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
    
    -- 3  
    when ("0011") =>
      if (en and f) then
        next_state <= "0100";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0011";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 4  
    when ("0100") =>
      if (en and f) then
        next_state <= "0101";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0100";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 5  
    when ("0101") =>
      if (en and f) then
        next_state <= "0110";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0101";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 6  
    when ("0110") =>
      if (en and f) then
        next_state <= "0111";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0110";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 7
    when ("0111") =>
      if (en and f) then
        next_state <= "1000";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "0111";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 8  
    when ("1000") =>
      if (en and f) then
        next_state <= "1001";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "1000";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 9  
    when ("1001") =>
      if (en and f) then
        next_state <= "1010";
        r <= '1';
        s <= '1';
        l <= '0';
      else
        next_state <= "1001";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    -- 10  
    when ("1010") =>
      if (en and f) then
        next_state <= "0000";
        r <= '0';
        s <= '0';
        l <= '1';
      else
        next_state <= "1010";
        r <= '0';
        s <= '0';
        l <= '0';
      end if;
      
    when others =>
      r <= '0';
      s <= '0';
      l <= '0';
    end case;
  end process;
end architecture behave;