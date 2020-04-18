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

/// @description	Init Camera

// Simple Stats
cam		= view_camera[0];
follow	= obj_player;
xtarget = xstart;
ytarget = ystart;

//camera_set_view_size(cam, mResW, mResH);
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;


// Shake Support
shake_length	= 0;
shake_magnitude = 0;
shake_remain	= 0;