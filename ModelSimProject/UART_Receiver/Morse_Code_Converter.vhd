-- Morse_Code_Converter.vhd

library IEEE;
use IEEE.std_logic_1164.all;


entity Morse_Code_Converter is
	port (clock_50 : in std_logic;
				UART_RXD : in std_logic;
				LCD_RS, LCD_RW, LCD_EN, LCD_ON, LCD_BLON, Speaker_out : out std_logic;
				LCD_Data : out std_logic_vector(7 downto 0);
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0));
end entity Morse_Code_Converter;

architecture behave of Morse_Code_Converter is
	signal n0, n1, n2, n3, n4 : std_logic;
	signal b0 								: std_logic_vector(3 downto 0);
	signal b1, b2 						: std_logic_vector(3 downto 0);
	signal morse_output 			: std_logic_vector(7 downto 0);
	signal size 							: std_logic_vector(2 downto 0);
	signal test_en						: std_logic;

	-- Components in Design
	-- Clock
	-- Uarec
	-- LCD
	-- morse_code
	-- allstates
	-- hexDisplay

	component clock_en
		port (clk : in std_logic;
				  en_out16, en_out : std_logic);
	end component;

	component uarec
		port (en : in std_logic;
          clk: in std_logic;
          ser_in: in std_logic;
          dout :  out std_logic_vector(7 downto 0);
          en_out: out std_logic);
  end component;

  component lcd
  	port (clk : in std_logic;
  				ascii_in : in std_logic_vector(7 downto 0);
  				ds : in std_logic;
  				rs, rw, en, lcd_on, lcdblon : out std_logic;
  				data_out : out std_logic_vector(7 downto 0));
  end component;

  component morse_code
   port (dout : in std_logic_vector(7 downto 0);
   			 en_out, clk : in std_logic;
   			 size: out std_logic_Vector(2 downto 0);
   			 enSpeaker : out std_logic;
   			 morse_out : out std_logic_vector(4 downto 0));
  end component;

  component allstates
  	port (inBits : in std_logic_vector(7 downto 0);
  				clk, en : in std_logic;
  				hex0_out, hex1_out, hex2_out, hex3_out, hex4_out : out std_logic_vector(6 downto 0);
  				outputBit : out std_logic);
  end component;

  component hexDisplay
  	port (hex7_out : out std_logic_vector(6 downto 0);
  				hex6_out : out std_logic_vector(6 downto 0);
  				hex5_out : out std_logic_vector(6 downto 0));
  end component;

begin
	
	U1 : clock_en
		port map (clk => clock_50,
							en_out16 => n3,
							en_out => n1);


	U2 : uarec
		port map (ser_in => UART_RXD,
							clk => clock_50,
							en => n3,
							en_out => n4,
							dout => b2);

	U3 : lcd
		 port map (clk => clock_50,
		 					 ds => n4,
		 					 ascii_in => b2,
		 					 rs => LCD_RS,
		 					 rw => LCD_RW,
		 					 en => LCD_EN,
		 					 lcdon => LCD_ON,
		 					 lcdblon => LCD_BLON,
		 					 data_out => LCD_DATA);

	U4 : morse_code
		port map (clk => clock_50,
							dout => b2,
							en_out => n4,
							size => size,
							morse_out => morse_output,
							enSpeaker => test_en);

	U5 : allstates
		port map (inBits => morse_output,
							clk => clock_50,
							en => n4,
							size => size,
							outputBit => Speaker_out,
							hex0_out => HEX0,
							hex1_out => HEX1,
							hex2_out => HEX2,
							hex3_out => HEX3,
							hex4_out => HEX4);

	U6 : hexDisplay
		port map (hex7_out => HEX7,
							hex6_out => HEX6,
							hex5_out => HEX5);

end architecture behave;
