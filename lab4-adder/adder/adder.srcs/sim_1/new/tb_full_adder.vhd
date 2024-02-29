-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.2.2024 14:21:46 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder is
end tb_full_adder;

architecture tb of tb_full_adder is

    component full_adder
        port (c_in  : in std_logic;
              b     : in std_logic;
              a     : in std_logic;
              c_out : out std_logic;
              sum   : out std_logic);
    end component;

    signal c_in  : std_logic;
    signal b     : std_logic;
    signal a     : std_logic;
    signal c_out : std_logic;
    signal sum   : std_logic;

begin

    dut : full_adder
    port map (c_in  => c_in,
              b     => b,
              a     => a,
              c_out => c_out,
              sum   => sum);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
       if( c_in <= '0' and
        b <= '0' and
        a <= '0') 
        then c_out <= '0';
        
        if( c_in <= '0' and
        b <= '0' and
        a <= '1') 
        then c_out <= '0';
        
        if( c_in <= '0' and
        b <= '1' and
        a <= '0') 
        then c_out <= '0';
        
        if( c_in <= '0' and
        b <= '1' and
        a <= '1') 
        then c_out <= '1';
        
        if( c_in <= '1' and
        b <= '0' and
        a <= '0') 
        then c_out <= '0';
        
        if( c_in <= '1' and
        b <= '0' and
        a <= '1') 
        then c_out <= '1';
        
        if( c_in <= '1' and
        b <= '1' and
        a <= '0') 
        then c_out <= '1';
        
        if( c_in <= '1' and
        b <= '1' and
        a <= '1') 
        then c_out <= '1';
        



        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_full_adder of tb_full_adder is
    for tb
    end for;
end cfg_tb_full_adder;