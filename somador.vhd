library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Somador16 is
    Port (
        A : in STD_LOGIC_VECTOR(15 downto 0);
        B : in STD_LOGIC_VECTOR(15 downto 0);
        S : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Somador16;

architecture Behavioral of Somador16 is
begin
    S <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));
end Behavioral;