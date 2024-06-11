import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class BigOutlineSelect extends StatelessWidget {
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
				padding: EdgeInsets.fromLTRB(16, 8, 15, 8),
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Align(
									alignment: Alignment.topLeft,
									child: Container(
										child: Text(
											'Country',
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
								Container(
									child: Text(
										'United States',
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
						Container(
							margin: EdgeInsets.fromLTRB(0, 15, 0, 14),
							width: 10,
							height: 5,
							child: SizedBox(
								width: 10,
								height: 5,
								child: SvgPicture.asset(
									'assets/vectors/VECTOR-38_x4.svg',
								),
							),
						),
					],
				),
			),
		);
	}
}