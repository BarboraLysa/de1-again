----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 03:20:20 PM
-- Design Name: 
-- Module Name: gates - Behavioral
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

entity gates is
    Port ( a        : in STD_LOGIC;
           b        : in STD_LOGIC;
           AND_out  : out STD_LOGIC;
           OR_out   : out STD_LOGIC;
           XOR_out  : out STD_LOGIC);
end gates;

architecture Behavioral of gates is

begin

    AND_out <= a and b; 
    OR_out <= a or b;
    XOR_out <= a xor b; 

end Behavioral;
