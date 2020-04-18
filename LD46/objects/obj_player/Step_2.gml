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

/// @description	Handle Double Jump and update Anim

if (global.gstate != eGAME.run) exit; // Skip this step when game pause

// Double Jump
if (can_dash && global.gcontroller.key_dash)
{
	can_dash = false;
	dashing_counter = dashing_max;
	
	input_direction = point_direction(0, 0, global.gcontroller.key_right - global.gcontroller.key_left, global.gcontroller.key_down - global.gcontroller.key_up);
	input_magnitude = (global.gcontroller.key_right - global.gcontroller.key_left != 0) || (global.gcontroller.key_down - global.gcontroller.key_up != 0);
	dx = lengthdir_x(input_magnitude * dash_spd, input_direction);
	dy = lengthdir_y(input_magnitude * dash_spd, input_direction);
}