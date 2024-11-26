library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ALU is
end TB_ALU;

architecture Behavioral of TB_ALU is

    signal A, B : STD_LOGIC_VECTOR(15 downto 0);
    signal Mode : STD_LOGIC;
    signal ALU_Result : STD_LOGIC_VECTOR(31 downto 0); 
begin

    UUT: entity work.ALU_Control
        port map (
            A => A,
            B => B,
            Mode => Mode,
            ALU_Result => ALU_Result  
        );


    stimulus: process
    begin

        A <= "0000000000000011"; 
        B <= "0000000000000101";
        Mode <= '0';
        wait for 10 ns;


        A <= "0000000000000011";
        B <= "0000000000000101";
        Mode <= '1';
        wait for 10 ns;


        wait;
    end process;
end Behavioral;