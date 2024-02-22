-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 8.2.2024 14:38:21 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_gates is
end tb_gates;

architecture tb of tb_gates is

    component gates
        port (a       : in std_logic;
              b       : in std_logic;
              AND_out : out std_logic;
              OR_out  : out std_logic;
              XOR_out : out std_logic);
    end component;

    signal a       : std_logic;
    signal b       : std_logic;
    signal AND_out : std_logic;
    signal OR_out  : std_logic;
    signal XOR_out : std_logic;

begin

    dut : gates
    port map (a       => a,
              b       => b,
              AND_out => AND_out,
              OR_out  => OR_out,
              XOR_out => XOR_out);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        b <= '0'; a <= '0'; wait for 100 ns; 
        b <= '0'; a <= '1'; wait for 100 ns; 
        b <= '1'; a <= '0'; wait for 100 ns; 
        b <= '1'; a <= '1'; wait for 100 ns; 
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_gates of tb_gates is
    for tb
    end for;
end cfg_tb_gates;