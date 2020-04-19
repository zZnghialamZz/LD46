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

/// @description	Draw GUI here

draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items_count; i++) {
	var offset = 2;
	var txt = menu[i];
	var xx = menu_x;
	var yy = menu_y - menu_items_height * (i * 1.5);
	var col;
	
	if (menu_cursor == i) {
		txt = string_insert("> ", txt, 0);
		col = c_white;
	} else { col = c_gray; }
	
	// Draw outline
	draw_set_color(c_black);
	draw_text(xx + offset, yy, txt);
	draw_text(xx - offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_text(xx, yy - offset, txt);
	
	// Draw text
	draw_set_color(col);
	draw_text(xx, yy, txt);
}

draw_set_color(c_black);
draw_rectangle(gui_w, gui_h - 200, gui_w + gui_w, gui_h, false);