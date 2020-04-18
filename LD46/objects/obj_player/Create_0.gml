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

/// @description	Init more variables for players
enum ePSTATE
{
	idle,
	running,
	jumping,
	dbl_jumping,
	die
};

state = ePSTATE.idle;

// Double Jump Support
dash_spd		= 5;
dashing_counter = 0;
dashing_max		= 10;
can_dash		= false;// Player Dashing jump check

// Jump Buffering
buffer_counter	= 0;	// Initialize the buffer counter
buffer_max		= 4;	// Amount of frames to allow for buffer

// Coyote time Support
coyote_counter	= 0;
coyote_max		= 6;	// Amount of frames to allow for late jump
jumped			= true;	// Player jump check