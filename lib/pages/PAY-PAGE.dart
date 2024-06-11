import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PayPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Container(
					padding: EdgeInsets.symmetric(horizontal: 33),
					decoration: BoxDecoration(
						gradient: LinearGradient(
							begin: Alignment(-1, -1),
							end: Alignment(0.933, 1),
							colors: <Color>[
								Color(0xFF0093FF),
								Color(0xFF003D78),
								Color(0xFFE22718)
							],
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
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: [
							GestureDetector(
								onTap: () {
									// Handle tap on the image/button
									print('Image/Button tapped');
								},
								child: Container(
									margin: EdgeInsets.only(bottom: 24),
									child: Align(
										alignment: Alignment.topCenter,
										child: Container(
											decoration: BoxDecoration(
												color: Color(0xFF0E0E0E),
												borderRadius: BorderRadius.circular(20),
											),
											child: SizedBox(
												width: 288,
												child: Padding(
													padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
													child: Stack(
														clipBehavior: Clip.none,
														children: [
															Column(
																mainAxisAlignment: MainAxisAlignment.center,
																crossAxisAlignment: CrossAxisAlignment.center,
																children: [
																	Container(
																		margin: EdgeInsets.only(bottom: 16.4),
																		child: ClipRRect(
																			borderRadius: BorderRadius.circular(30),
																			child: ImageFiltered(
																				imageFilter: ImageFilter.blur(
																					sigmaX: 10,
																					sigmaY: 10,
																				),
																				child: SizedBox(
																					width: 101.1,
																					height: 48.8,
																					child: SvgPicture.asset(
																						'assets/vectors/VECTOR-57_x4.svg',
																					),
																				),
																			),
																		),
																	),
																	RichText(
																		textAlign: TextAlign.center,
																		text: TextSpan(
																			style: GoogleFonts.getFont(
																				'Poppins',
																				fontWeight: FontWeight.w600,
																				fontSize: 22,
																				color: Color(0xDEFFFFFF),
																			),
																			children: [
																				TextSpan(
																					text: ' the new Segway ',
																					style: GoogleFonts.getFont(
																						'Poppins',
																						fontWeight: FontWeight.w600,
																						fontSize: 24,
																						height: 1.3,
																					),
																				),
																				TextSpan(
																					text: 'Smart Scooter ES2',
																					style: GoogleFonts.getFont(
																						'Poppins',
																						fontWeight: FontWeight.w400,
																						fontSize: 16,
																						height: 1.3,
																					),
																				),
																			],
																		),
																	),
																],
															),
															Positioned(
																top: 17.4,
																left: (288 - 194.4) / 2, // Center the image horizontally
																child: Container(
																	decoration: BoxDecoration(
																		image: DecorationImage(
																			fit: BoxFit.cover,
																			image: AssetImage(
																				'EMPTY',
																			),
																		),
																	),
																	child: SizedBox(
																		width: 194.4,
																		height: 275.7,
																	),
																),
															),
														],
													),
												),
											),
										),
									),
								),
							),
							GestureDetector(
								onTap: () {
									// Handle tap on "PAY A MONTH" button
									print('PAY A MONTH tapped');
								},
								child: Container(
									margin: EdgeInsets.only(bottom: 24),
									child: Container(
										decoration: BoxDecoration(
											color: Color(0xFFFFFFFF),
											borderRadius: BorderRadius.circular(24),
										),
										child: Container(
											width: 240,
											padding: EdgeInsets.symmetric(vertical: 14, horizontal: 19.4),
											child: Center(
												child: Text(
													'PAY A MONTH 14.99\$',
													style: GoogleFonts.getFont(
														'Montserrat',
														fontWeight: FontWeight.w600,
														fontSize: 16,
														letterSpacing: -0.2,
														color: Color(0xFF0E3255),
													),
												),
											),
										),
									),
								),
							),
							GestureDetector(
								onTap: () {
									// Handle tap on "PAY A YEAR" button
									print('PAY A YEAR tapped');
								},
								child: Container(
									decoration: BoxDecoration(
										border: Border.all(color: Color(0xFFFFFFFF)),
										borderRadius: BorderRadius.circular(24),
										color: Color(0xFF0E3255),
									),
									child: Container(
										width: 240,
										padding: EdgeInsets.symmetric(vertical: 14),
										child: Center(
											child: Text(
												'PAY A YEAR 149.\$',
												style: GoogleFonts.getFont(
													'Montserrat',
													fontWeight: FontWeight.w600,
													fontSize: 16,
													letterSpacing: -0.2,
													color: Color(0xFFFFFFFF),
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
		);
	}
}
