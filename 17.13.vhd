--______ _    _    _____ _____  ___  ___  ___
--|  ___| |  | |  |_   _|  ___|/ _ \ |  \/  |
--| |_  | |  | |    | | | |__ / /_\ \| .  . |
--|  _| | |/\| |    | | |  __||  _  || |\/| |
--| |   \  /\  /    | | | |___| | | || |  | |
--\_|    \/  \/     \_/ \____/\_| |_/\_|  |_/
--
--------------------------------------------------------------------------------
-- Projetc: Template
-- File: Template.vhd
--------------------------------------------------------------------------------
-- Description: This file is a template for vhd files
--
--------------------------------------------------------------------------------
--		Version:			Author:				Date:		Change:
--         0.0				Garshon				1/1/2020	Initial
--
--
--------------------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- TODO: import lib here, if needed

Entity Pencoder is
   port(
   	-------------------
   	-- General Ports --
   	------------------
   	-----------------
   	-- Input ports --
   	-----------------
   	Y: in std_logic_vector(3 downto 0); A: out std_logic_vector(1 downto 0)

   	------------------
   	-- Output ports --
   	------------------
   	-- TODO: Insert all outputs
    
    );
End entity Pencoder;

Architecture Arch of Pencoder is
	-- TODO: Declare signals here
Begin
	process (Y)
   Begin
   if Y(3) = '1' then A <= "11";
   elsif (Y(2) = '1') then A <= "10";
   elsif (Y(1) = '1') then A <= "01";
   elsif (Y(0) = '1') then A <= "00";
   else A <= "XX";
   end if;
   end process;

End Architecture Arch;