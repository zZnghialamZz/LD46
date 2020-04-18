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

/// @description	Init Controller Variables

enum eCONTROLLER
{
	keyboard,
	gamepad
}

key_left	= 0;
key_right	= 0;
key_up		= 0;
key_down	= 0;
key_jump	= 0;
key_action	= 0;
key_pause	= 0;

use_gamepad	= false;
current_use = eCONTROLLER.keyboard;