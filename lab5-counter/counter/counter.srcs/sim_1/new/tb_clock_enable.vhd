----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2024 04:28:53 PM
-- Design Name: 
-- Module Name: tb_clock_enable - Behavioral
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


library ieee;
    use ieee.std_logic_1164.all;

entity tb_clock_enable is
end entity tb_clock_enable;

architecture tb of tb_clock_enable is
    component clock_enable is
        generic (
            PERIOD : integer
        );
        port (
            clk   : in    std_logic;
            rst   : in    std_logic;
            pulse : out   std_logic
        );
    end component;

    signal clk   : std_logic;
    signal rst   : std_logic;
    signal pulse : std_logic;

    constant TbPeriod   : time      := 10 ns; -- EDIT Put right period here
    signal   TbClock    : std_logic := '0';
    signal   TbSimEnded : std_logic := '0';
begin

    dut : component clock_enable
        generic map (
            PERIOD => 6
        )
        port map (
            clk   => clk,
            rst   => rst,
            pulse => pulse
        );

    -- Clock generation
    TbClock <= not TbClock after TbPeriod / 2 when TbSimEnded /= '1' else
               '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process is
    begin

        -- EDIT Adapt initialization as needed

        -- Reset generation
        -- EDIT: Check that rst is really your reset signal
        rst <= '1';
        wait for 100 ns;
        rst <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process stimuli;

end architecture tb;