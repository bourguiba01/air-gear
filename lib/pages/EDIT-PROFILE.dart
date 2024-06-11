import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Container(
			decoration: BoxDecoration(
				gradient: LinearGradient(
					begin: Alignment(-1, -1),
					end: Alignment(0.933, 1),
					colors: <Color>[Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
					stops: <double>[0, 0.495, 1],
				),
				boxShadow: [
					BoxShadow(
						color: Color(0x40000000),
						offset: Offset(0, 4),
						blurRadius: 2,
					),
					BoxShadow(
						color: Color(0x66000000),
						offset: Offset(-31, 32),
						blurRadius: 15,
					),
				],
			),
			child: Container(
				padding: EdgeInsets.fromLTRB(7, 713, 7, 16),
				child: SizedBox(
					width: 346,
					height: 71,
					child: SvgPicture.asset(
						'assets/vectors/LAYER-7_x4.svg',
					),
				),
			),
		);
	}
}