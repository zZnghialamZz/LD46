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

/// @description	Update UI Element Position

// GUI Size
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
// View Guide Size
var _vw = mResW;
var _vh = mResH;
// Center Position for Guide
var _vcx = _vw / 2;
var _vcy = _vh / 2;
// Starting location
var _x = xstart;
var _y = ystart;
// Identify all offsets for various grids
var _posx = [_x,    _gw/2-(_vcx - _x),		_gw-(_vw - _x)];
var _posy = [_y,    _gh/2-(_vcy - _y),		_gh-(_vh - _y)];

#region Apply offset based on current grid
switch(grid)
{
	// Top
	case eGRID.top_left:
	{
		x = _posx[eALIGN.left];
		y = _posy[eALIGN.top];
		break;
	}
	case eGRID.top_center:
	{
		x = _posx[eALIGN.center];
		y = _posy[eALIGN.top];
		break;
	}
	case eGRID.top_right: 
	{
		x = _posx[eALIGN.right];
		y = _posy[eALIGN.top];
		break;
	}
	// Middle		 
	case eGRID.mid_left:
	{
		x = _posx[eALIGN.left];
		y = _posy[eALIGN.mid];
	    break;
	}
	case eGRID.mid_center:
	{
		x = _posx[eALIGN.center];
		y = _posy[eALIGN.mid];
		break;
	}
	case eGRID.mid_right:
	{
		x = _posx[eALIGN.right];
		y = _posy[eALIGN.mid];
		break;
	}
	// Bot		 
	case eGRID.bot_left:
	{
		x = _posx[eALIGN.left];
		y = _posy[eALIGN.bot];
		break;
	}
	case eGRID.bot_center:
	{
		x = _posx[eALIGN.center];
		y = _posy[eALIGN.bot];
		break;
	}
	case eGRID.bot_right:
	{
		x = _posx[eALIGN.right];
		y = _posy[eALIGN.bot];
		break;
	}
}
#endregion

active_pos = [x, y];