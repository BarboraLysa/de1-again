----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 03:29:28 PM
-- Design Name: 
-- Module Name: tb_bin2seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 22.2.2024 14:29:51 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_bin2seg is
end tb_bin2seg;

architecture tb of tb_bin2seg is

    component bin2seg
        port (clear : in std_logic;
              bin   : in std_logic_vector (3 downto 0);
              seg   : out std_logic_vector (6 downto 0));
    end component;

    signal clear : std_logic;
    signal bin   : std_logic_vector (3 downto 0);
    signal seg   : std_logic_vector (6 downto 0);

begin

    dut : bin2seg
    port map (clear => clear,
              bin   => bin,
              seg   => seg);

    stimuli : process
    begin
        
        clear <= '0';
        
        bin <= x"0";
        wait for 50 ns;
        assert seg = "0000001"
            report "0 does not map to 0000001"
            severity error;
            
        bin <= x"0";
        wait for 50 ns;
        assert seg = "0000001"
            report "0 does not map to 0000001"
            severity error;
        
       bin <= x"1";
        wait for 50 ns;
        assert seg = "1001111"
            report "0 does not map to 1001111"
            severity error;
            
       bin <= x"2";
        wait for 50 ns;
        assert seg = "0010001"
            report "0 does not map to 0010001"
            severity error;
            
       bin <= x"3";
        wait for 50 ns;
        assert seg = "0000110"
            report "0 does not map to 0000110"
            severity error;
            
       bin <= x"4";
        wait for 50 ns;
        assert seg = "1001100"
            report "0 does not map to 1001100"
            severity error;
            
       bin <= x"5";
        wait for 50 ns;
        assert seg = "0100100"
            report "0 does not map to 0100100"
            severity error;
            
       bin <= x"6";
        wait for 50 ns;
        assert seg = "0100000"
            report "0 does not map to 0100000"
            severity error;
            
       bin <= x"7";
        wait for 50 ns;
        assert seg = "0001111"
            report "0 does not map to 0001111"
            severity error;
            
       bin <= x"8";
        wait for 50 ns;
        assert seg = "0000000"
            report "0 does not map to 0000000"
            severity error;
            
       bin <= x"9";
        wait for 50 ns;
        assert seg = "0001100"
            report "0 does not map to 0001100"
            severity error;
            
       bin <= x"A";
        wait for 50 ns;
        assert seg = "0001000"
            report "0 does not map to 0001000"
            severity error;
            
       bin <= x"b";
        wait for 50 ns;
        assert seg = "1100000"
            report "0 does not map to 1100000"
            severity error;
            
       bin <= x"C";
        wait for 50 ns;
        assert seg = "0110001"
            report "0 does not map to 0110001"
            severity error;
            
       bin <= x"d";
        wait for 50 ns;
        assert seg = "1000010"
            report "0 does not map to 1000010"
            severity error;
            
       bin <= x"E";
        wait for 50 ns;
        assert seg = "0110000"
            report "0 does not map to 0110000"
            severity error;
          
       bin <= x"F";
        wait for 50 ns;
        assert seg = "0111000"
            report "0 does not map to 0111000"
            severity error;

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_bin2seg of tb_bin2seg is
    for tb
    end for;
end cfg_tb_bin2seg;
