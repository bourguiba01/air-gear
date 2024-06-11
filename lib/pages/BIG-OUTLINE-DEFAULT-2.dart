import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class BigOutlineDefault2 extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Container(
			decoration: BoxDecoration(
				border: Border.all(color: Color(0xFF767676)),
				borderRadius: BorderRadius.circular(8),
				color: Color(0xFF030E1E),
			),
			child: Container(
				padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Align(
							alignment: Alignment.topLeft,
							child: Container(
								child: Text(
									'Label',
									style: GoogleFonts.getFont(
										'Roboto',
										fontWeight: FontWeight.w400,
										fontSize: 10,
										height: 1.6,
										letterSpacing: 0.3,
										color: Color(0xFFDADADA),
									),
								),
							),
						),
						Align(
							alignment: Alignment.topLeft,
							child: Container(
								child: Text(
									'youremail@domain.com',
									style: GoogleFonts.getFont(
										'Roboto',
										fontWeight: FontWeight.w400,
										fontSize: 14,
										height: 1.3,
										letterSpacing: 0.3,
										color: Color(0xFFFBFBFB),
									),
								),
							),
						),
					],
				),
			),
		);
	}
}