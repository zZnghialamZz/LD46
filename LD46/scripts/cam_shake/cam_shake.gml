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

/// @function     cam_shake(magnitude, frame) 
/// @description  Make the Camera Shaking Effect 
/// @argument     {int}	magnitude
/// @argument     {int}	frame

/* Variables */
var _magnitude	= argument[0]; 
var _length		= argument[1]; 

/* Script body goes here */
with (global.gcam) {
	if (_magnitude > shake_remain) {
		shake_magnitude = _magnitude;
		shake_remain = shake_magnitude;
		shake_length = _length;
	}
}