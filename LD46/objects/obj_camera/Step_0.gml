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

/// @description	Update Camera Stats

// Camera movement
if (instance_exists(follow))
{
	xtarget = follow.x;
	ytarget = follow.y;
}
x += (xtarget - x) / mCamFrict;
y += (ytarget - y) / mCamFrict;
x = clamp(x, view_w_half, room_width - view_w_half);	// Prevent camera go out of the room
y = clamp(y, view_h_half, room_height - view_h_half);	// Prevent camera go out of the room

// Shaking
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_length) * shake_magnitude);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);