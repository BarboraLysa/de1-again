----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 04:10:25 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
Port (     BTNR : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           CLK100MHZ : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0);
           LED16_B : out STD_LOGIC);
end top_level;

architecture Behavioral of top_level is
    component debounce is 
        port(   clk      : in STD_LOGIC;
                rst      : in STD_LOGIC;
                en       : in STD_LOGIC;
                bouncey  : in STD_LOGIC;
                pos_edge : out std_logic;
                neg_edge : out std_logic;
                clean    : out STD_LOGIC);
     end component;
     
     component clock_enable is
        generic(
                PERIOD : integer := 6
                );
        port(   clk : in STD_LOGIC;
                rst : in STD_LOGIC;
                pulse : out STD_LOGIC
                );
     end component;
     
     component simple_counter is
        generic (
                N : integer := 4
                );
        port(   clk : in STD_LOGIC;
                rst : in STD_LOGIC;
                en : in STD_LOGIC;
                count : out STD_LOGIC_VECTOR (N-1 downto 0)
                );
      end component;
      
      signal sig_event : std_logic;
      signal sig_en_2ms : std_logic;
    
begin

    CLK_E : clock_enable
        port map (
            clk => CLK100MHZ,
            rst => BTNC,
            pulse => sig_en_2ms
        );

    DEB : debounce
        port map (
            clk => CLK100MHZ,
            rst => BTNC,
            bouncey => BTNR,
            en =>  sig_en_2ms,
            pos_edge => sig_event,
            neg_edge => open,
            clean => LED16_B
        );

    SIMP_C : simple_counter
        port map (
            clk => CLK100MHZ,
            rst => BTNC,
            en => sig_event,
            count => LED
        );

end Behavioral;
