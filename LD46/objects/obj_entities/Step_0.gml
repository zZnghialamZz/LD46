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

/// @description	Movement statistic management

if (global.pause) exit;


#region Update Stats
// X
_x = dx;
dx *= mFrict;

if (place_meeting(x + _x, y, obj_coll)) {
	while (!place_meeting(x + sign(_x), y, obj_coll)) {
		x = x + sign(_x);
	}
	_x = 0;
	dx = 0;
}
x += _x;

// Y
_y = dy;
if (place_meeting(x, y + _y, obj_coll)) {
	while (!place_meeting(x, y + sign(_y), obj_coll)) {
		y = y + sign(_y);
	}
	_y = 0;
	dy = 0;
}
y += _y;
#endregion

#region In Air Status
if (place_meeting(x, y + 1, obj_coll)) { onland = true; }
else onland = false;
#endregion