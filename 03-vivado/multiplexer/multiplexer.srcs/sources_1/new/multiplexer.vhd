------------------------------------------------------------
--
-- Example of 2-bit binary comparator using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity comparator_4bit is
    port(
        b_i           : in  std_logic_vector(3 - 1 downto 0);
        a_i           : in  std_logic_vector(3 - 1 downto 0);
        c_i           : in  std_logic_vector(3 - 1 downto 0);
        d_i           : in  std_logic_vector(3 - 1 downto 0);
        set_i           : in  std_logic_vector(3 - 1 downto 0);
        set_i2           : in  std_logic_vector(3 - 1 downto 0);
        fo_i           : in  std_logic_vector(3 - 1 downto 0);
        


end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_4bit is
begin
	with addr_i select
    y_o <= a_i when "00" then y_o = a_i    
           b_i when "01" then y_o = b_i   
           c_i when "10" then y_o = c_i    
           d_i when others;   


end architecture Behavioral;

