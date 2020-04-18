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

/// @description	Values Definition  

#region Enum Define
enum eTRANSTYPE
{
	fade,
	close_in
}
#endregion

is_done = false;
percent = 1;
timer = 60;

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

target = room;
type = eTRANSTYPE.fade;	// Using fade option as default.

