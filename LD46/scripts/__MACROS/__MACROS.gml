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

/// @description	Define all Macros of Games Objects

// Windows Settings
#macro mResW	320
#macro mResH	180
#macro mCenterWindow obj_wm.alarm[0] = 1 // Call Alarm0 after 1 frame
#macro mResizeWindow obj_wm.alarm[1] = 1 // Call Alarm1 after 1 frame

// Gameplay Stats
#macro mGameFPS		60
#macro mGravity		0.3
#macro mFrict		0.76

// For Camera
#macro mCamFrict	25