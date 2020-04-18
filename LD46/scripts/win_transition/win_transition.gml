/*	GMS2_ProjectBase

	Copyright (C) 2020  Nghia Lam

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

/* ********************************************************************* */

/// @function     win_transition(eGAME, frames, target) 
/// @description  Use for window transition
/// @argument     eGAME
/// @argument     frames {optional}
/// @argument     target {optional}

/* Script body goes here */
with (instance_create_depth(0,0, -1000, obj_wtrans))
{
	global.gstate = argument[0];
	if (argument_count > 1) timer = argument[1];
	if (argument_count > 2) target = argument[2];
}
