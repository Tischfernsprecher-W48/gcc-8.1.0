------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--               ADA.STRINGS.UNBOUNDED.HASH_CASE_INSENSITIVE                --
--                                                                          --
--                                B o d y                                   --
--                                                                          --
--            Copyright (C) 2011-2018, Free Software Foundation, Inc.       --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- This unit was originally developed by Matthew J Heaney.                  --
------------------------------------------------------------------------------

with Ada.Strings.Unbounded.Aux;
with Ada.Strings.Hash_Case_Insensitive;

function Ada.Strings.Unbounded.Hash_Case_Insensitive
  (Key : Unbounded.Unbounded_String)
  return Containers.Hash_Type
is
   S : Aux.Big_String_Access;
   L : Natural;

begin
   Aux.Get_String (Key, S, L);
   return Ada.Strings.Hash_Case_Insensitive (S (1 .. L));
end Ada.Strings.Unbounded.Hash_Case_Insensitive;
