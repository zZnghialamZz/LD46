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

/// @description	Update UI States

#region State Animation
switch (state)
{
	case eVISUALSTATE.active:
	{
		x = active_pos[0];
		y = active_pos[1];
		image_alpha = 1;
		break;
	}
	case eVISUALSTATE.inactive:
	{
		x = active_pos[0] + inactive_offset[0];
		y = active_pos[1] + inactive_offset[1];
		image_alpha = 0;
		break;
	}
	case eVISUALSTATE.activating:
	{
		timer++;
		
		x = tween(active_type, active_pos[0] + inactive_offset[0], active_pos[0], timer/length);
		y = tween(active_type, active_pos[1] + inactive_offset[1], active_pos[1], timer/length);
		image_alpha = tween(active_type, 0, 1, timer/length);
		
		if(timer >= length) { state = eVISUALSTATE.active; }
		break;
	}
	case eVISUALSTATE.deactivating:
	{
		timer++;
		
		x = tween(deactive_type, active_pos[0], active_pos[0] + inactive_offset[0], timer/length);
		y = tween(deactive_type, active_pos[1], active_pos[1] + inactive_offset[1], timer/length);
		image_alpha = tween(deactive_type, 1, 0, timer/length);
		
		if(timer >= length) { state = eVISUALSTATE.inactive; }
		break;
	}
}
#endregion