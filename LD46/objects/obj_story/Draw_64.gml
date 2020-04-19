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

/// @description	Draw Text to Screen

// Draw black bar
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), 64, false);
draw_rectangle(0, display_get_gui_height(), display_get_gui_width(), display_get_gui_height()-64, false);

// Draw text

draw_set_color(c_black);
draw_set_font(f_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

draw_text(display_get_gui_width() - 34, display_get_gui_height() / 3 + 34, text);
draw_set_color(c_white);
draw_text(display_get_gui_width() - 32, display_get_gui_height() / 3 + 32, text);