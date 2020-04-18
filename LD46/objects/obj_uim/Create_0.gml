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

/// @description	Init the UI states

#region Enum UI
// Enum GRID is used for manage ui location based on dividing the view into 9 GRID
//	-------------------------------------------------
//	|				|				|				|
//	|				|				|				|
//	|				|				|				|
//	-------------------------------------------------
//	|				|				|				|
//	|				|				|				|
//	|				|				|				|
//	-------------------------------------------------
//	|				|				|				|
//	|				|				|				|
//	|				|				|				|
//	-------------------------------------------------
enum eGRID
{
	top_left,	top_center,		top_right,
	mid_left,	mid_center,		mid_right,
	bot_left,	bot_center,		bot_right
}
enum eALIGN
{
	top = 0,	mid = 1,		bot = 2,
	left = 0,	center = 1,		right = 2
}
enum eVISUALSTATE
{
	active,
	activating,
	inactive,
	deactivating
}
#endregion

image_speed = 0;

grid = eGRID.top_left;
state = eVISUALSTATE.inactive;

length = 15;
timer = length;

active_type = eTWEENTYPE.out_back;
deactive_type = eTWEENTYPE.in_back;

active_pos = [0, 0];
inactive_offset = [0, 0];


// Update Position
event_user(0);
