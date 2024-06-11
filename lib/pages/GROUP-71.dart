import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group71 extends StatelessWidget {
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
				padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
				child: Stack(
					clipBehavior: Clip.none,
					children: [
						Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
									child: Text(
										'                    Phone number',
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
								Container(
									child: Text(
										'              123-456-7890',
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
							],
						),
						Positioned(
							left: 8,
							bottom: 4.4,
							child: Stack(
								children: [
									Positioned(
										right: -14.1,
										top: 0,
										child: SizedBox(
											width: 47.2,
											height: 24.8,
											child: SvgPicture.asset(
												'assets/vectors/GROUP-1_x4.svg',
											),
										),
									),
						Container(
										width: 33.1,
										height: 24.8,
									),
								],
							),
						),
					],
				),
			),
		);
	}
}