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

/// @description	Update Buttons Pressed

if keyboard_check_pressed(vk_anykey) { use_gamepad = false; }
if gamepad_button_check_pressed(0, gp_start) { use_gamepad = true; } // Press Start to use gamepad

// Check buttons state
if use_gamepad
{
	key_left	= abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right	= max(gamepad_axis_value(0, gp_axislh), 0);
	key_up		= abs(min(gamepad_axis_value(0, gp_axislv), 0));
	key_down	= max(gamepad_axis_value(0, gp_axislv), 0);
	key_jump	= gamepad_button_check(0, gp_face1);
	key_dash	= gamepad_button_check(0, gp_face2);
	key_action	= gamepad_button_check(0, gp_shoulderr);
	key_pause	= gamepad_button_check(0, gp_select);
}
else
{
	key_left	= keyboard_check(vk_left);
	key_right	= keyboard_check(vk_right);
	key_up		= keyboard_check(vk_up);
	key_down	= keyboard_check(vk_down);
	key_jump	= keyboard_check_pressed(vk_space);
	key_dash	= keyboard_check_pressed(ord("Z"));
	key_action	= keyboard_check_pressed(vk_enter);
	key_pause	= keyboard_check_pressed(vk_escape);
}