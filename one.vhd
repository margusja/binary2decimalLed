library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity one is
    Port ( --sw7: in STD_LOGIC;
			  --sw6: in STD_LOGIC;
			  --sw5: in STD_LOGIC;
			  --sw4: in STD_LOGIC;
			  --sw3: in STD_LOGIC;
			  --sw2: in STD_LOGIC;
			  --sw1: in STD_LOGIC;
			  --sw0: in STD_LOGIC;
			  sw:		in STD_LOGIC_VECTOR(3 downto 0);
			  
			  --an0 : out  STD_LOGIC;
           --ca : out  STD_LOGIC;
           --cb : out  STD_LOGIC;
           --cc : out  STD_LOGIC;
           --cd : out  STD_LOGIC;
           --ce : out  STD_LOGIC;
           --cf : out  STD_LOGIC;
           --cg : out  STD_LOGIC;
			  --g1 : out	STD_LOGIC
			  segment7: out STD_LOGIC_VECTOR (6 downto 0)
			  );
end one;

architecture Behavioral of one is

begin

-------------------------------------------------
--ca |cb |cc |cd |ce |cf |cg |out|sw3|sw2|sw1|sw0
-------------------------------------------------
-- 1 | 0 | 0 | 1 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 1
-- 0 | 0 | 1 | 0 | 0 | 1 | 0 | 2 | 0 | 0 | 1 | 0
-- 0 | 0 | 0 | 0 | 1 | 1 | 0 | 3 | 0 | 0 | 1 | 1
-- 1 | 0 | 0 | 1 | 1 | 0 | 0 | 4 | 0 | 1 | 0 | 0
-- 0 | 1 | 0 | 0 | 1 | 0 | 0 | 5 | 0 | 1 | 0 | 1
-- 1 | 1 | 0 | 0 | 0 | 0 | 0 | 6 | 0 | 1 | 1 | 0
-- 0 | 0 | 0 | 1 | 1 | 1 | 1 | 7 | 0 | 1 | 1 | 1
-- 0 | 0 | 0 | 0 | 0 | 0 | 0 | 8 | 1 | 0 | 0 | 0
-- 0 | 0 | 0 | 1 | 1 | 0 | 0 | 9 | 1 | 0 | 0 | 1
-- 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0

process (sw)
BEGIN
case sw is
	when "0001" => segment7 <= "1001111"; -- 1
	when "0010" => segment7 <= "0010010"; -- 2
	when "0011" => segment7 <= "0000110"; -- 3
	when "0100" => segment7 <= "1001100"; -- 4
	when "0101" => segment7 <= "0100100"; -- 5
	when "0110" => segment7 <= "1100000"; -- 6
	when "0111" => segment7 <= "0001111"; -- 7
	when "1000" => segment7 <= "0000000"; -- 8
	when "1001" => segment7 <= "0001100"; -- 9
	when "0000" => segment7 <= "0000001"; -- 0
	when others => segment7 <= "1111111"; -- blank
end case;
END process;

end Behavioral;

