library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux_1to4 is
 port(
 
 I : in STD_LOGIC;
 S0,S1: in STD_LOGIC;
 Y0,Y1,Y2,Y3: out STD_LOGIC
 );
end demux_1to4;
 
architecture bhv of demux_1to4 is
begin
process (I, S0, S1) is
begin
if(S0 = '0' AND S1 = '0') then Y0 <= I;
elsif(S0 = '0' AND S1 = '1') then Y1 <= I;
elsif(S0 = '1' AND S1 = '0') then Y2 <= I;
else Y0 <= I;
end if;
end process;
end bhv;
