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

/// @description	Go to the destination

if (rmtarget != room)
{
	obj_player.is_control = false;
	
	win_transition(eGAME.goto, rmtarget, 10);
	obj_player.image_alpha = 0;
	
	obj_player.x = xtarget;
	obj_player.y = ytarget;
	
	global.save_loc_x = xtarget;
	global.save_loc_y = ytarget;
		
	alarm[0] = 30;
}