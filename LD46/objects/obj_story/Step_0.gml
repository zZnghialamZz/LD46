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

/// @description	Update Letters

// Progress Text
letters += spd;
text = string_copy(ending_text[currentline], 1, floor(letters));

// Next line
if (letters < length) && (global.gcontroller.key_jump) {
	letters = length - 2;
}

if (letters >= length) && (global.gcontroller.key_jump) {
	if (currentline + 1 == array_length_1d(ending_text)) {
		win_transition(eGAME.next);
		global.counter = true;
		with (obj_game) { 
			alarm[0] = mGameFPS; 
			event_user(0); // Play song
		}
	}
	else {
		currentline++;
		letters = -0;
		length = string_length(ending_text[currentline]);
	}
}
