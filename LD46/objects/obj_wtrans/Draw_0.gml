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

/// @description	Draw the transition

if (!is_done) {
	switch (type)
	{
		case eTRANSTYPE.fade:
		{
			draw_set_color(c_black);
			draw_set_alpha(percent);
			draw_rectangle(0 , 0, display_get_gui_width(), display_get_gui_height(), false);
			draw_set_alpha(1);
			break;
		}
		case eTRANSTYPE.close_in:
		{
			draw_set_color(c_black);
			draw_rectangle(0, 0, w, percent * h_half, false);
			draw_rectangle(0, h, w, h - (percent * h_half), false);
			break;
		}
	}
}