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

/// @description	Calculate input and check state

if (global.pause) exit; // Skip this step when game pause


// Get Input (Platformer)

#region X -------------------------------

dir = global.gcontroller.key_right - global.gcontroller.key_left;
dx += (dir * walk_spd);

#endregion


#region Y -------------------------------

// Gravity
if (global.has_grv && dashing_counter == 0) { dy += mGravity; }
else { dashing_counter--; }

// Coyote Timer
if (!onland) {
	if (coyote_counter > 0) {
		coyote_counter--;
		
		if (!jumped && global.gcontroller.key_jump) {
			dy -= (jump_h + mGravity * (coyote_max - coyote_counter)); // Ensure full jump with gravity still apply
			jumped = true;
			can_dash = true;
		}
	}
} else {
	can_dash = false;
	jumped = false;
	coyote_counter = coyote_max;
}

// Jump Buffer
if (global.gcontroller.key_jump) { buffer_counter = buffer_max }
if (buffer_counter > 0) {
	buffer_counter--;
	if (onland) { 
		dy -= jump_h;
		jumped = true;	
		can_dash = true;
		
		coyote_counter = 0; // Not need when jump on land
	}
}

// Gliding
if (state == ePSTATE.jumping && dashing_counter == 0 && sign(dy) > 0 && global.gcontroller.key_up) 
{
	dy -= 0.2;
}

#endregion

// Update state
if (!onland) { state = ePSTATE.jumping; }
else {
	if (dx != 0) { state = ePSTATE.running; }
	else { state = ePSTATE.idle; }
}
