library ieee;
use ieee.std_logic_1164.all;

entity SRFF is
port (S, R, CLK: in std_logic;
Q, QN: out std_logic);
end SRFF;
architecture SRFF1 of SRFF is
signal Qint: std_logic;
begin
Q <= Qint;
QN <= not Qint;
process (CLK)
begin
if CLK'event and CLK = '1' then 
	if S ='1'and R = '1' then Qint <= 'X';
	else Qint <= (not R and Qint) or (not R and S);
 end if;
 end if;
 end process;
 end SRFF1;