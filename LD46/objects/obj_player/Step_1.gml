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

/// @description	Calculate input and check state

if (global.pause) exit; // Skip this step when game pause


#region Get Input (Platformer)
// X
dir = global.gcontroller.key_right - global.gcontroller.key_left;
dx += (dir * walk_spd);
// Y
if (global.has_grv) { dy += mGravity; }
if (onland) && (global.gcontroller.key_jump) { dy -= jump_h; }

#endregion

