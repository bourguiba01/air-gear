import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Container(
			child: SizedBox(
				width: 16,
				height: 15.6,
				child: SvgPicture.asset(
					'assets/vectors/VECTOR-41_x4.svg',
				),
			),
		);
	}
}