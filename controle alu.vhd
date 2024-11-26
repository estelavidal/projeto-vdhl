library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_Control is
    Port (
        Mode : in STD_LOGIC; 
        A, B : in STD_LOGIC_VECTOR(15 downto 0);
        ALU_Result : out STD_LOGIC_VECTOR(31 downto 0) 
    );
end ALU_Control;

architecture Behavioral of ALU_Control is
    signal S : STD_LOGIC_VECTOR(15 downto 0);
    signal P : STD_LOGIC_VECTOR(31 downto 0);
begin

    U1: entity work.Somador16
        port map (
            A => A,
            B => B,
            S => S
        );


    U2: entity work.Multiplicador16
        port map (
            A => A,
            B => B,
            P => P
        );


    ALU_Result <= std_logic_vector(resize(unsigned(S), 32)) when Mode = '0' else P;
end Behavioral;