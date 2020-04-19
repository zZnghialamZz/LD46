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

/// @description	Your description goes here

// Shaking
if (!is_done)
{
	if (counter > 0) { 
		counter--;
		if (counter == 0) { is_done = true; }
	}
	
	x += xstart - x;
	y += ystart - y;
	x += random_range(-shake_remain, shake_remain);
	y += random_range(-shake_remain, shake_remain);
	shake_remain = max(0, shake_remain - (1/shake_length) * shake_magnitude);
} else {
	instance_destroy(my_coll);
	
	y += mGravity * 3;
}

