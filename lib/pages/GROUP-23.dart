import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group23 extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Container(
			child: Text(
				'Edit profile',
				style: GoogleFonts.getFont(
					'Poppins',
					fontWeight: FontWeight.w600,
					fontSize: 22,
					height: 1.3,
					color: Color(0xFFFEFEFE),
				),
			),
		);
	}
}