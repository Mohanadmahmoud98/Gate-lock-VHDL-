library Sxlib_ModelSim;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity project1 is
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
end project1;
architecture FSM of project1 is
  type STATE_TYPE is (S0, S1,s2,s3,s4);  
  signal NS, CS : STATE_TYPE;
  begin
  p1: process (CS, code, daytime, reset)
  begin
if (reset='1') then
   NS<=S0;
   door<='0';
   alarm<='0';
else 
   case CS is
       when s0=>
	 if(daytime='1') then
		if(code="1101") then
		      door <= '1';
		      alarm <= '0';
		      NS <=s0;
		 elsif(code="0010") then
		      door<='0';
		      alarm<='0';
		      NS<=s1;
		  else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
	         end if;
	elsif (daytime='0')then
		if(code="0010") then
		      door<='0';
		      alarm<='0';
		      NS<=s1;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
			
		  end if;
	end if;
		  
	  --------------------------------
      when s1=>
	 
	if(daytime='1') then
		if(code="1101") then
		      door <= '1';
		      alarm <= '0';
		      NS <=s0;
		elsif(code="0110") then
		      door<='0';
		      alarm<='0';
		      NS<=s2;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
	        end if;
	elsif (daytime='0') then
		if(code="0110") then
		      door<='0';
		      alarm<='0';
		      NS<=s2;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
			
		end if;
	end if;
	  ---------------------------------
      when s2=>
	if(daytime='1') then
		if(code="1101") then
		      door <= '1';
		      alarm <= '0';
		      NS <=s0;
		elsif(code="1010") then
		      door<='0';
		      alarm<='0';
		      NS<=s3;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
	 	end if;
	elsif (daytime='0') then
		if(code="1010") then
		      door<='0';
		      alarm<='0';
		      NS<=s3;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
			
		end if;
	end if;
	  ---------------------------------
      when s3=>
	if(daytime='1') then
		if(code="1101") then
		      door <= '1';
		      alarm <= '0';
		      NS <=s0;
		elsif(code="0000") then
		      door<='0';
		      alarm<='0';
		      NS<=s4;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
		end if;
	elsif (daytime='0')then
		if(code="0000") then
		      door<='0';
		      alarm<='0';
		      NS<=s4;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
			
		end if;
	end if;
	  
	  ---------------------------------
      when s4=>
	if(daytime='1') then
		if(code="1101") then
		      door <= '1';
		      alarm <= '0';
		      NS <=s0;
		elsif(code="0101") then
		      door<='1';
		      alarm<='0';
		      NS<=s0;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
		end if;
	elsif (daytime='0') then
		if(code="0101") then
		      door<='1';
		      alarm<='0';
		      NS<=s0;
		else
		      door<='0';
		      alarm<='1';
		      NS <= S0;
			
		end if;
	end if;
	   ---------------------------------
	  
	  end case;
	  end if;
	  end process;
p2: process(clk)
  begin
	if(clk = '1' and clk'event)then
    
      CS <= NS;
    end if;
  end process;
end FSM;	  
	  
	  
	  
	  