library Sxlib_ModelSim;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
ENTITY projecttbb IS
END ENTITY projecttbb;
ARCHITECTURE fsmtbb OF projecttbb IS
component project1 is
port  (
    clk     : in	bit;
	code   : in	bit_vector(3 downto 0) ;
	daytime     : in	bit;
	reset : in	bit;
	vdd   : in	bit;
	vss   : in	bit;
	door     : out	bit;
	alarm	: out	bit
      );
end component;
FOR dut: project1 USE ENTITY WORK.project1 (FSM);
SIGNAL clk    : bit := '0';
SIGNAL code     : bit_vector(3 downto 0) := "0000";
SIGNAL daytime     : bit := '1';
SIGNAL reset : bit := '1';
SIGNAL vdd   : bit := '1';
SIGNAL vss   : bit := '0';
signal door : bit:= '0';
signal alarm : bit := '0';
begin
dut: project1 PORT MAP (clk, code, daytime, reset, vdd, vss, door, alarm);
 clk_process :process
begin
        clk <= '1';
        wait for 10 ns;  
        clk <= '0';
        wait for 10 ns;  

   end process;
p1:process is begin
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "1 error"
SEVERITY error;
---- first testbensh
daytime<='1';
code<="1101";
reset<='0';
wait For 20 ns;
ASSERT door = '1' and alarm ='0'
REPORT "2 error"
SEVERITY error;
---------second testbench
daytime<='1';
code<="0010";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT " 3 error"
SEVERITY error;
-------------------------
daytime<='1';
code<="0110";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT " 4 error"
SEVERITY error;
-------------------------
daytime<='1';
code<="1010";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT " 5 error"
SEVERITY error;
--------------------------
daytime<='1';
code<="0000";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT " 6 error"
SEVERITY error;
--------------------------
daytime<='1';
code<="0101";
reset<='0';
wait For 20 ns;
ASSERT door = '1' and alarm ='0'
REPORT " 7 error"
SEVERITY error;
-----------third testbench
daytime<='0';
code<="1101";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='1'
REPORT "8 error"
SEVERITY error;
-------------fourth testnech
daytime<='0';
code<="0010";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "9 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="0110";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "10 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="1010";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "11 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="0000";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "12 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="0101";
reset<='0';
wait For 20 ns;
ASSERT door = '1' and alarm ='0'
REPORT "13 error"
SEVERITY error;
--------------fifth testbench
daytime<='0';
code<="0010";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "14 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="0110";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='0'
REPORT "15 error"
SEVERITY error;
----------------------------
daytime<='0';
code<="0110";
reset<='0';
wait For 20 ns;
ASSERT door = '0' and alarm ='1'
REPORT "16 error"
SEVERITY error;
----------------------------
WAIT;
END PROCESS ;
END ARCHITECTURE ;



