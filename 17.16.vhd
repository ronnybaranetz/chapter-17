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

Entity seven_segment_display is
   port(
   	-------------------
   	-- General Ports --
   	------------------
   	-----------------
   	-- Input ports --
   	-----------------
   	X: in std_logic_vector(3 downto 0); A: out std_logic_vector(1 to 7)

   	------------------
   	-- Output ports --
   	------------------
   	-- TODO: Insert all outputs
    
    );
End entity seven_segment_display;

Architecture Arch of seven_segment_display is
	-- TODO: Declare signals here
Begin
	process (X)
   Begin
   case X is
      when "0000" => A <= "1111110";
      when "0001" => A <= "0110000";
      when "0010" => A <= "1101101";
      when "0011" => A <= "1111001";
      when "0100" => A <= "0110011";
      when "0101" => A <= "1011011";
      when "0110" => A <= "1011111";
      when "0111" => A <= "1110000";
      when "1000" => A <= "1111111";
      when "1001" => A <= "1111011";
      when others => null;
      end case;
   end process;

End Architecture Arch;