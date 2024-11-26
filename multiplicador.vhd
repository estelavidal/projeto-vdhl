library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplicador16 is
    Port (
        A : in STD_LOGIC_VECTOR(15 downto 0);
        B : in STD_LOGIC_VECTOR(15 downto 0);
        P : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Multiplicador16;

architecture Behavioral of Multiplicador16 is
begin
    P <= STD_LOGIC_VECTOR(unsigned(A) * unsigned(B));
end Behavioral;