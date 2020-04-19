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

/// @description	Init Game Values

#region Global Variables
enum eGAME
{
	menu,
	run,
	next,
	goto,
	pause,
	restart,
	ending,
	transition
}

global.ending		= false;

// Count Down Support
global.counter		= false;
global.count_time	= 60;
count_text_scale	= 1;

// Location Management
global.save_loc_x	= 0;
global.save_loc_y	= 0;

// Score Value Management
global.hearts = 0;
global.apple = 0;
global.value_loc = ds_list_create();

global.has_grv		= true; // Platformer only
#endregion

#region Init Managers
global.gstate		= eGAME.transition; // Transition Fade at start screen.

if (!instance_exists(obj_audio))		global.audio		= instance_create_layer(0, 0, layer, obj_audio);
if (!instance_exists(obj_wm))			global.gwm			= instance_create_layer(0, 0, layer, obj_wm);
if (!instance_exists(obj_camera))		global.gcam 		= instance_create_layer(0, 0, layer, obj_camera);
if (!instance_exists(obj_controller))	global.gcontroller 	= instance_create_layer(0, 0, layer, obj_controller);

if (!instance_exists(obj_wtrans))		global.gwtransition	= instance_create_depth(0, 0, -1000, obj_wtrans);
#endregion

// Apply Default Settings
game_set_speed(mGameFPS, gamespeed_fps);
mResizeWindow;

// Fade Screen At Startup
win_transition(eGAME.transition);