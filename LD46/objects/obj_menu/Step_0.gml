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

/// @description	Control Menu

menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items_count) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items_count - 1;
	}
	if (global.gcontroller.key_jump)
	{
		// Play sound
		
		
		// Update Menu
		menu_x_target = gui_w + 200;
		menu_chosen = menu_cursor;
		menu_control = false;
		cam_shake(6, 25);
	}
}

// Handle Chosen
if (menu_chosen != -1)
{
	switch (menu_chosen)
	{
		case 1:
		{
			win_transition(eGAME.next);
			break;
		}
		case 0: game_end(); break;
	}
}