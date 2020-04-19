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

/// @description	Draw Counter when game start

if (room != main_menu && instance_exists(obj_player) && global.gstate == eGAME.run)
{
	draw_set_color(c_black);
	draw_set_font(f_menu);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	
	draw_text_transformed(display_get_gui_width() - 8, 10, string(global.count_time) + "s remaining", count_text_scale, count_text_scale, 0);
	draw_set_color(c_white);
	draw_text_transformed(display_get_gui_width() - 10, 8, string(global.count_time) + "s remaining", count_text_scale, count_text_scale, 0);
}