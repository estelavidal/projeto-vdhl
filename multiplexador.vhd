library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexador is
    Port (
        Sel : in STD_LOGIC; 
        In1 : in STD_LOGIC_VECTOR(31 downto 0); 
        In2 : in STD_LOGIC_VECTOR(31 downto 0); 
        Out_signal : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Multiplexador;

architecture Behavioral of Multiplexador is
begin
    Out_signal <= In1 when Sel = '0' else In2;
end Behavioral;
