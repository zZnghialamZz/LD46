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

/// @description	Init Event Ending

if (object_exists(obj_wtrans)) instance_destroy(obj_wtrans);

idtoget = layer_get_id("bg");
bgrnd = layer_background_get_id(idtoget);

var _rating = "";

if (global.hearts == 2) {
	if (global.apple == 3) _rating = "A";
	else _rating = "B";
	ending_text[0]	= "With 2 crystal hearts collected\n Dango is received the treatment in time \n>";
	ending_text[1]	= "The two then go to a far land of Antarctica. \n Stay away from dangerous human \n>";
	ending_text[2]	= "Game Result: \n" + string(global.apple) + "/3 apples collected\n" + string(global.hearts) + "/2 hearts collected\n" + "Rating: " + _rating + "\n>";
	ending_text[3]	= "THE END !!!";
	
	layer_background_sprite(bgrnd, spr_menu); 
} else {
	if (global.apple == 3) _rating = "C";
	else _rating = "D";
	
	ending_text[0]	= "Penguin has failed in the mission of saving his best friend !! \n>";
	ending_text[1]	= "After a while, nobody know where is the Penguin.\n Some says that he has moved far away from this land, \n the others say that he had left this cruel world \n and met his friend in the heaven. \n>";
	ending_text[2]	= "Game Result: \n" + string(global.apple) + "/3 apples collected\n" + string(global.hearts) + "/2 hearts collected\n" + "Rating: " + _rating + "\n>";
	ending_text[3]	= "THE END !!!";
	
	layer_background_sprite(bgrnd, spr_ending); 
}

spd = 0.25;
letters = 0;
currentline = 0;
length = string_length(ending_text[currentline]);
text = "";