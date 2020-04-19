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

/// @description	Init Event



ending_text[0]	= "In a small land of Antarctica, there are two best friends:\n Penguin and Dango \n>";
ending_text[1]	= "They are very close to each other. \n>";
ending_text[2]	= "One day, there were some human \n who come and steal away Dango's crystal heart \n>";
ending_text[3]	= "However they meet a storm when trying get back to their base\n The crystal has fallen deep down in the cave. \n>";
ending_text[4]	= "Now it's the chance to take back the crystal and save Dango\n As the crystal is some kind of Dango's Heart, \n>";
ending_text[5]	= "Game Tut: \n Move: Up, Down, Left, Right \n Jump: Space \n Dash in Air: Z \n Tip: You can dash in direction \n and when you jump you can hold UP button for a slow fall";
ending_text[5]	= "You only have 60 seconds to take back 2 crytal piece \n Please be hurry!!";


spd = 0.25;
letters = 0;
currentline = 0;
length = string_length(ending_text[currentline]);
text = "";