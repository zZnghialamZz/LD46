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

/// @description	Init values

rmtarget = -1;
xtarget = x;
ytarget = y;

if (x >= room_width) xtarget = 16;
else if (x <= 0) xtarget = room_width - 16;

if (y >= room_height) ytarget = 16;
else if (y <= 0) ytarget = room_height - 16;