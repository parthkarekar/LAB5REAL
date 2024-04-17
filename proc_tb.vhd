----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2024 07:35:44 PM
-- Design Name: 
-- Module Name: proc_tb - Behavioral
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

entity proc_tb is
end proc_tb;

architecture Behavioral of proc_tb is

component uproc_top_level_wrapper is 

port (

    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_vs : out STD_LOGIC

);

end component; 

signal RXD, TXD, btn_0, clk, vga_hs, vga_vs: std_logic;
signal vga_r,  vga_b: std_logic_vector(4 downto 0);
signal vga_g: std_logic_vector (5 downto 0); 

begin


DUT: uproc_top_level_wrapper
port map (

clk => clk,
RXD => RXD,
btn_0 => btn_0,
TXD => TXD,
vga_hs => vga_hs,
vga_vs => vga_vs, 
vga_r => vga_r,
vga_b => vga_b,
vga_g => vga_g

);





process
begin 

clk <= '1';
wait for 4 ns;
clk <= '0';
wait for 4 ns; 

end process; 

end Behavioral;
