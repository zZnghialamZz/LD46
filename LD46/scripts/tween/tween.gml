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

/// @function		tween(type, start, end, amount) 
/// @description	Generating intermidiate frames of object between two positions.
/// @argument		type
/// @argument		start
/// @argument		end
/// @argument		amount
/// @argument		<option1>
/// @argument		<option2>

#region Tween Types
enum eTWEENTYPE
{
	linear,
	inout_back,		in_back,	out_back,
	inout_bounce,	in_bounce,	out_bounce,
	inout_circle,	in_circle,	out_circle,
	inout_cubic,	in_cubic, 	out_cubic,
	inout_elastic,	in_elastic,	out_elastic,
	inout_expo,		in_expo,	out_expo,
	inout_quad,		in_quad,	out_quad,
	inout_quart,	in_quart,	out_quart,
	inout_quint,	in_quint,	out_quint,
	inout_sine,		in_sine,	out_sine,
	count
}
#endregion

/* Variables */
var _type	= clamp(argument[0],0,eTWEENTYPE.count);
var _start	= argument[1];
var _end	= argument[2];
var _pos	= argument[3];
var _chng	= _end - _start;
var _mid	= (_start + _end) / 2;

/* Script body goes here */
#macro mTween_Back_DefaultBounciness 1.5

#macro mTween_Bounce_DefaultBounciness 7.5625
#macro mTween_Bounce_Bounce1_Pos 1/2.75
#macro mTween_Bounce_Bounce2_Pos 2/2.75
#macro mTween_Bounce_Bounce3_Pos 2.5/2.75
#macro mTween_Bounce_Bounce1_Change 1.5/2.75
#macro mTween_Bounce_Bounce2_Change 2.25/2.75
#macro mTween_Bounce_Bounce3_Change 2.625/2.75

#macro mTween_Sine_Half_Pi 1.57079632679

switch (_type)
{
	case eTWEENTYPE.linear: 
		return lerp(_start, _end, _pos);
	
	#region back
	case eTWEENTYPE.inout_back:
	{
		var _b = (argument_count > 4) ? argument[4] : mTween_Back_DefaultBounciness;
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_back, _start, _mid, _pos*2, _b) 
							: tween(eTWEENTYPE.out_back, _mid, _end, (_pos-.5)*2, _b);
	}						
	case eTWEENTYPE.in_back:
	{
		var _b = (argument_count > 4) ? argument[4] : mTween_Back_DefaultBounciness;
		return _chng * (_pos) * _pos * ((_b + 1) * _pos - _b) + _start;
	}	
	case eTWEENTYPE.out_back:
	{
		var _b = (argument_count > 4) ? argument[4] : mTween_Back_DefaultBounciness;
		_pos -= 1;
		return _chng * (_pos * _pos * ((_b + 1) * _pos + _b) + 1) + _start;
	}
	#endregion
	
	#region bounce
	case eTWEENTYPE.inout_bounce:
	{
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_bounce, _start, (_start + _end) / 2, _pos*2)
							: tween(eTWEENTYPE.out_bounce, (_start + _end) / 2, _end, (_pos-.5)*2);
	}
	case eTWEENTYPE.in_bounce:
	{
		var _chng = _end - _pos;
		var _pos = 1 - _pos;
		return _chng - tween(eTWEENTYPE.out_bounce, _start, _end, _pos, mTween_Bounce_DefaultBounciness) + _start;
	}
	case eTWEENTYPE.out_bounce:
	{
		if (_pos < mTween_Bounce_Bounce1_Pos)
		{
			return _chng * (mTween_Bounce_DefaultBounciness * _pos * _pos) + _start;
		}
		else if (_pos < mTween_Bounce_Bounce2_Pos) 
		{
			_pos -= mTween_Bounce_Bounce1_Change; 
			return _chng * (mTween_Bounce_DefaultBounciness * _pos * _pos + 3/4) + _start;
		}
		else if (_pos < mTween_Bounce_Bounce3_Pos)
		{
			_pos -= mTween_Bounce_Bounce2_Change; 
			return _chng * (mTween_Bounce_DefaultBounciness * _pos * _pos + 15/16) + _start; 
		}

		_pos -= mTween_Bounce_Bounce3_Change;
		return _chng * (mTween_Bounce_DefaultBounciness * _pos * _pos + 63/64) + _start;
	}
	#endregion
	
	#region circle
	case eTWEENTYPE.inout_circle:
	{
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_circle, _start, _mid, _pos*2)
							: tween(eTWEENTYPE.out_circle, _mid, _end, (_pos-.5)*2);
	}
	case eTWEENTYPE.in_circle:
	{
		return -_chng * (sqrt(1 - _pos*_pos)-1) + _start;
	}
	case eTWEENTYPE.out_circle:
	{
		_pos--;
		return _chng * sqrt(1 - _pos * _pos) + _start;
	}
	#endregion
	
	#region cubic
	case eTWEENTYPE.inout_cubic:
	{
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_cubic, _start, _mid, _pos*2) 
							: tween(eTWEENTYPE.out_cubic, _mid, _end, (_pos-.5)*2);
	}
	case eTWEENTYPE.in_cubic:
		return _chng * power(_pos, 3) + _start;
	case eTWEENTYPE.out_cubic:
		return _chng * (power(_pos - 1, 3) + 1) + _start;
	#endregion
	
	#region elastic
	case eTWEENTYPE.inout_elastic:
	{
		var _e = (argument_count > 4) ? argument[4] : 0.3;
		var _d = (argument_count > 5) ? argument[5] : 5.0;
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_elastic, _start, _mid, _pos*2, _e, _d)
							: tween(eTWEENTYPE.out_elastic, _mid, _end, (_pos-.5)*2, _e, _d);
	}
	case eTWEENTYPE.in_elastic:
	{
		var _s,_p;
		var _e = (argument_count > 4) ? argument[4] : 0.3;
		var _d = (argument_count > 5) ? argument[5] : 5.0;

		if (_pos == 0 || _chng == 0) return _start; 
		if (_pos == 1) return _end;

		_p = _d * _e;
		_s = sign(_chng) == -1 ? _p * 0.25 : _p / (2 * pi) * arcsin(1);

		return -(_chng * power(2,10 * (--_pos)) * sin((_pos * _d - _s) * (pi * 2) / _p)) + _start;
	}
	case eTWEENTYPE.out_elastic:
	{
		var _s,_p;
		var _e = (argument_count > 4) ? argument[4] : 0.3;
		var _d = (argument_count > 5) ? argument[5] : 5.0;

		if (_pos == 0 || _chng == 0) return _start;
		if (_pos == 1) return _end;

		_p = _d * _e;
		_s = (sign(_chng) == -1) ? _p * 0.25 : _p / (2 * pi) * arcsin (1);

		return _chng * power(2, -10 * _pos) * sin((_pos * _d - _s) * (2 * pi) / _p ) + _chng + _start;
	}
	#endregion
	
	#region expo
	case eTWEENTYPE.inout_expo:
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_expo,_start,_mid,_pos*2) 
							: tween(eTWEENTYPE.out_expo,_mid,_end,(_pos-.5)*2);
	case eTWEENTYPE.in_expo:
		return _chng * power(2, 10 * (_pos - 1)) + _start;
	case eTWEENTYPE.out_expo:
		return _chng * (-power(2, -10 * _pos) + 1) + _start;
	#endregion
	
	#region quad
	case eTWEENTYPE.inout_quad:
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_quad,_start,_mid,_pos*2) 
							: tween(eTWEENTYPE.out_quad,_mid,_end,(_pos-.5)*2);
	case eTWEENTYPE.in_quad:
		return _chng * _pos * _pos + _start;
	case eTWEENTYPE.out_quad:
		return -_chng * _pos * (_pos - 2) + _start;
	#endregion
	
	#region quart
	case eTWEENTYPE.inout_quart:
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_quart,_start,_mid,_pos*2) 
							: tween(eTWEENTYPE.out_quart,_mid,_end,(_pos-.5)*2);
	case eTWEENTYPE.in_quart:
		return _chng * (_pos * _pos * _pos * _pos) + _start;
	case eTWEENTYPE.out_quart:
		return -_chng * (((_pos - 1) * (_pos - 1) * (_pos - 1) * (_pos - 1)) - 1) + _start;
	#endregion
	
	#region quint
	case eTWEENTYPE.inout_quint:
		return (_pos < 0.5) ? tween(eTWEENTYPE.in_quint,_start,_mid,_pos*2) 
							: tween(eTWEENTYPE.out_quint,_mid,_end,(_pos-.5)*2);
	case eTWEENTYPE.in_quint:
		return _chng * _pos * _pos * _pos * _pos * _pos + _start;
	case eTWEENTYPE.out_quint:
		return _chng * ((_pos - 1) * (_pos -1) * (_pos -1) * (_pos -1) * (_pos -1) + 1) + _start;
	#endregion
	
	#region sine
	case eTWEENTYPE.inout_sine:
		return _chng * 0.5 * (1 - cos(pi * _pos)) + _start;
	case eTWEENTYPE.in_sine:
		return _chng * (1 - cos(_pos * mTween_Sine_Half_Pi)) + _start;
	case eTWEENTYPE.out_sine:
		return _chng * sin(_pos * mTween_Sine_Half_Pi) + _start;
	#endregion
}
