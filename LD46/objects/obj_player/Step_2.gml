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

// Double Jump
if (jumped && can_dash && global.gcontroller.key_jump)
{
	can_dash = false;
	dashing_counter = dashing_max;
	
	input_direction = point_direction(0, 0, global.gcontroller.key_right - global.gcontroller.key_left, global.gcontroller.key_down - global.gcontroller.key_up);
	input_magnitude = (global.gcontroller.key_right - global.gcontroller.key_left != 0) || (global.gcontroller.key_down - global.gcontroller.key_up != 0);
	dspd_x = lengthdir_x(input_magnitude * dash_spd, input_direction);
	dspd_y = lengthdir_y(input_magnitude * dash_spd, input_direction);
	
	dx += dspd_x;
	dy += dspd_y;
}