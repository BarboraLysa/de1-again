-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.2.2024 14:45:27 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_compare_2bit is
end tb_compare_2bit;

architecture tb of tb_compare_2bit is

    component compare_2bit
        port (a         : in std_logic_vector (1 downto 0);
              b         : in std_logic_vector (1 downto 0);
              b_greater : out std_logic;
              b_a_equal : out std_logic;
              a_greater : out std_logic);
    end component;

    signal a         : std_logic_vector (1 downto 0);
    signal b         : std_logic_vector (1 downto 0);
    signal b_greater : std_logic;
    signal b_a_equal : std_logic;
    signal a_greater : std_logic;

begin

    dut : compare_2bit
    port map (a         => a,
              b         => b,
              b_greater => b_greater,
              b_a_equal => b_a_equal,
              a_greater => a_greater);

    stimuli : process
    begin
        report "START of the simulation";
        
        b <= "00";
        a <= "00";  
        wait for 100 ns;   
        assert (
            (b_greater = '0') and 
            (b_a_equal = '1') and 
            (a_greater = '0') 
            )
            report "Combination 0/0 failed"
            severity error;
            
        
        b <= "00";
        a <= "01";  
        wait for 100 ns;
        assert (
            (b_greater = '0') and 
            (b_a_equal = '0') and 
            (a_greater = '1') 
            )
            report "Combination 0/1 failed"
            severity error;
        
        b <= "00";
        a <= "10";  
        wait for 100 ns;
        assert (
            (b_greater = '0') and 
            (b_a_equal = '0') and 
            (a_greater = '1') 
            )
            report "Combination 0/2 failed"
            severity error;
        
        b <= "00";
        a <= "11";  
        wait for 100 ns;
        
        b <= "01";
        a <= "00";  
        wait for 100 ns;  
        
        b <= "01";
        a <= "01";  
        wait for 100 ns;
        
        b <= "01";
        a <= "10";  
        wait for 100 ns; 
        
        b <= "01";
        a <= "11";  
        wait for 100 ns;
        
        b <= "10";
        a <= "00";  
        wait for 100 ns;
        
        b <= "10";
        a <= "01";  
        wait for 100 ns;
        
        b <= "10";
        a <= "10";  
        wait for 100 ns;
        
        b <= "10";
        a <= "11";  
        wait for 100 ns;
        
        b <= "11";
        a <= "00";  
        wait for 100 ns;
        
        b <= "11";
        a <= "01";  
        wait for 100 ns;
        
        b <= "11";
        a <= "10";  
        wait for 100 ns;
        
        b <= "11";
        a <= "11";  
        wait for 100 ns;

        report "END of the simulation";

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_compare_2bit of tb_compare_2bit is
    for tb
    end for;
end cfg_tb_compare_2bit;