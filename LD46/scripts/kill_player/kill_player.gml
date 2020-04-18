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

/// @function		kill_player() 
/// @description	Kill the Player

with (obj_player) {
	is_control = false;
	
	direction = point_direction(other.x, other.y, x, y);
	dx = lengthdir_x(3, direction);
	dy = lengthdir_y(3, direction);
	

	if (sign(dx) != 0) image_xscale = sign(dx);
	
	game_set_speed(mGameFPS / 2, gamespeed_fps); // Slow motion
	cam_shake(6, 60);
	
	state = ePSTATE.die;
	
	alarm[0] = 60; // Restart after 60 frames
}