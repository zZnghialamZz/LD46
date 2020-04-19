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

/// @description	Update Anim

if (global.gstate != eGAME.run) exit; // Skip this step when game pause

switch(state)
{
	case ePSTATE.idle:
	{
		image_speed = 1;
		sprite_index = spr_player_idle;
		break;
	}
	case ePSTATE.running:
	{
		image_speed = 1;
		sprite_index = spr_player_walk;
		if (sign(dx) != 0) image_xscale = sign(dx);
		break;
	}
	case ePSTATE.jumping:
	{
		if (sign(dx) != 0) image_xscale = sign(dx);
		if (sign(dy) < 0) {
			sprite_index = spr_player_jump;
			image_speed = 1;
		} else if (sign(dy) > 0) {
			image_speed = 0;
			sprite_index = spr_player_jump;
			image_index = 3;
		}
		break;
	}
	case ePSTATE.die:
	{	
		image_speed = 1;
		sprite_index = spr_player_die;
		break;
	}
};