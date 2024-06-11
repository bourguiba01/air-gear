import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group66 extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.center,
			children: [
				Container(
					margin: EdgeInsets.fromLTRB(0, 0, 0, 12.2),
					child: SizedBox(
						width: 120,
						height: 122.8,
						child: Container(
							padding: EdgeInsets.fromLTRB(0, 0, 0, 2.8),
							child: Stack(
								clipBehavior: Clip.none,
								children: [
									Container(
										width: 120,
										height: 120,
										child: Container(
											decoration: BoxDecoration(
												image: DecorationImage(
													fit: BoxFit.cover,
													image: AssetImage(
														'EMPTY',
													),
												),
											),
											child: Container(
												width: 120,
												height: 120,
											),
										),
									),
									Positioned(
										right: 0,
										bottom: 0,
										child: Container(
											decoration: BoxDecoration(
												color: Color(0xFF434343),
												borderRadius: BorderRadius.circular(21.7),
											),
											child: Container(
												width: 43.5,
												height: 43.5,
												padding: EdgeInsets.fromLTRB(13.2, 12.3, 13.2, 12.3),
												child: Container(
													width: 17,
													height: 18.9,
													child: SizedBox(
														width: 17,
														height: 18.9,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-3_x4.svg',
														),
													),
												),
											),
										),
									),
								],
							),
						),
					),
				),
				Container(
					margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
					child: Text(
						'Puerto Rico',
						style: GoogleFonts.getFont(
							'Poppins',
							fontWeight: FontWeight.w600,
							fontSize: 22,
							height: 1.3,
							color: Color(0xFFFEFEFE),
						),
					),
				),
				Text(
					'youremail@domain.com | +01 234 567 89',
					style: GoogleFonts.getFont(
						'Roboto',
						fontWeight: FontWeight.w400,
						fontSize: 14,
						height: 1.4,
						letterSpacing: 0.3,
						color: Color(0xFFFEFEFE),
					),
				),
			],
		);
	}
}