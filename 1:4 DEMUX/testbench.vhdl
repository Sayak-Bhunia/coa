LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_demux IS
END tb_demux;
 
ARCHITECTURE behavior OF tb_demux IS
 
-- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT demux_1to4
PORT(
I : IN std_logic;
S0 : IN std_logic;
S1 : IN std_logic;
Y0 : OUT std_logic;
Y1 : OUT std_logic;
Y2 : OUT std_logic;
Y3 : OUT std_logic
);
END COMPONENT;
 
--Inputs
signal I : std_logic := '0';
signal S0 : std_logic := '0';
signal S1 : std_logic := '0';
 
--Outputs
signal Y0 : std_logic;
signal Y1 : std_logic;
signal Y2 : std_logic;
signal Y3 : std_logic;
-- No clocks detected in port list. Replace <clock> below with
-- appropriate port name
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: demux_1to4 PORT MAP (
I => I,
S0 => S0,
S1 => S1,
Y0 => Y0,
Y1 => Y1,
Y2 => Y2,
Y3 => Y3
);
 
-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
 
I<='1';
S0<='0'; S1<='0'; wait for 100ns;
S0<='0'; S1<='1'; wait for 100ns;
S0<='1'; S1<='0'; wait for 100ns;
S0<='1'; S1<='1'; wait for 100ns;
-- insert stimulus here
 
wait;
end process;
 
END;
