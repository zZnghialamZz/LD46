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

/// @description	Resize Window and Application Surface when it is not fullscreen

surface_resize(application_surface, cur_w * subpx_scale, cur_h * subpx_scale);
//display_set_gui_size(cur_w * gui_scale, cur_h * gui_scale);

if (!window_get_fullscreen())
{
	window_set_size(cur_w * win_scale, cur_h * win_scale);
	mCenterWindow;
}