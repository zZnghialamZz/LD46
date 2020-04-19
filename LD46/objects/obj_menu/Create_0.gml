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

/// @description	Init Value for Menu

// GUI values
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
gui_margin = 32;

menu_x_target = gui_w - gui_margin; // For making text transition in menu when startup
menu_x = gui_w + 200;
menu_y = gui_h - gui_margin * 8;

menu_speed = 20;

menu_control = true;

menu_font = f_menu;

menu[1] = "New Game";
menu[0] = "Quit";
menu_items_count = array_length_1d(menu);
menu_items_height = font_get_size(menu_font);

menu_cursor = 1;
menu_chosen = -1;

with (obj_player) {
	event_user(0); // Play song
}