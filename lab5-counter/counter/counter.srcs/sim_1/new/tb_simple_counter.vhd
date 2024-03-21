--- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 7.3.2024 14:21:13 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_simple_counter is
end tb_simple_counter;

architecture tb of tb_simple_counter is

    component simple_counter
    generic (
            N : integer := 4
            );
        port (clk   : in std_logic;
              rst   : in std_logic;
              en    : in std_logic;
              count : out std_logic_vector (N-1 downto 0));
    end component;

    signal sig_clk   : std_logic;
    signal sig_rst   : std_logic;
    signal sig_en    : std_logic;
    constant COUNTER_WIDTH : integer := 6;
    signal sig_count : std_logic_vector (COUNTER_WIDTH-1 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : simple_counter
    generic map(
            N => COUNTER_WIDTH
             )
    port map (clk   => sig_clk,
              rst   => sig_rst,
              en    => sig_en,
              count => sig_count);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    sig_clk <= TbClock;
    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    --  YOURCLOCKSIGNAL <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        
        sig_en <= '0';

        -- Reset generation
        -- EDIT: Check that rst is really your reset signal
        sig_rst <= '1';
        wait for 100 ns;
        sig_rst <= '0';
        wait for 100 ns;
        sig_en <= '1';
        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_simple_counter of tb_simple_counter is
    for tb
    end for;
end cfg_tb_simple_counter;