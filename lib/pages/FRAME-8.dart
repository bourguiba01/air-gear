import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Frame8 extends StatelessWidget {
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
				padding: EdgeInsets.fromLTRB(0, 62, 0, 0),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					crossAxisAlignment: CrossAxisAlignment.end,
					children: [
						Container(
							margin: EdgeInsets.fromLTRB(25.7, 0, 25.7, 14),
							child: Transform(
								transform: Matrix4.rotationZ(0.7853981805),
								child: Container(
									child: Text(
										'',
										style: GoogleFonts.getFont(
											'Source Sans 3',
											fontWeight: FontWeight.w900,
											fontSize: 20,
											letterSpacing: -0.2,
											color: Color(0xFFFFFFFF),
										),
									),
								),
							),
						),
						Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								Container(
									margin: EdgeInsets.fromLTRB(1, 0, 0, 12.1),
									child: Container(
										decoration: BoxDecoration(
											color: Color(0xFFC4C4C4),
											borderRadius: BorderRadius.circular(4),
										),
										child: Container(
											width: 46.1,
											height: 4,
										),
									),
								),
								Container(
									decoration: BoxDecoration(
										color: Color(0xFFFFFFFF),
										borderRadius: BorderRadius.only(
											topLeft: Radius.circular(16),
											topRight: Radius.circular(16),
										),
										boxShadow: [
											BoxShadow(
												color: Color(0x29212121),
												offset: Offset(0, -4),
												blurRadius: 12,
											),
										],
									),
									child: Container(
										padding: EdgeInsets.fromLTRB(22.6, 0, 23, 59.7),
										child: Column(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0.4, 0, 0.4, 15.6),
													child: Align(
														alignment: Alignment.topLeft,
														child: Text(
															'Add  card',
															style: GoogleFonts.getFont(
																'Montserrat',
																fontWeight: FontWeight.w600,
																fontSize: 20,
																letterSpacing: -0.2,
																color: Color(0xFF444444),
															),
														),
													),
												),
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 0, 16.9),
													child: Column(
														mainAxisAlignment: MainAxisAlignment.start,
														crossAxisAlignment: CrossAxisAlignment.start,
														children: [
															Container(
																margin: EdgeInsets.fromLTRB(8.2, 0, 7.7, 22.9),
																decoration: BoxDecoration(
																	border: Border.all(color: Color(0xFFD0D0D0)),
																	borderRadius: BorderRadius.circular(16),
																	color: Color(0xFFF6F6F6),
																),
																child: Container(
																	width: 298.6,
																	height: 188.9,
																),
															),
															Container(
																margin: EdgeInsets.fromLTRB(0, 0, 0, 30.8),
																child: Column(
																	mainAxisAlignment: MainAxisAlignment.start,
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: [
																		Container(
																			margin: EdgeInsets.fromLTRB(0, 0, 0, 39.7),
																			child: Align(
																				alignment: Alignment.topLeft,
																				child: Text(
																					'Name',
																					style: GoogleFonts.getFont(
																						'Montserrat',
																						fontWeight: FontWeight.w600,
																						fontSize: 12,
																						letterSpacing: -0.2,
																						color: Color(0xFF444444),
																					),
																				),
																			),
																		),
																		Container(
																			margin: EdgeInsets.fromLTRB(0.5, 0, 0, 0),
																			child: Container(
																				decoration: BoxDecoration(
																					color: Color(0xFFD0D0D0),
																				),
																				child: Container(
																					width: 313.9,
																					height: 1,
																				),
																			),
																		),
																	],
																),
															),
															Container(
																margin: EdgeInsets.fromLTRB(0.5, 0, 0, 30.8),
																child: Column(
																	mainAxisAlignment: MainAxisAlignment.start,
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: [
																		Container(
																			margin: EdgeInsets.fromLTRB(0, 0, 0, 22.7),
																			child: Align(
																				alignment: Alignment.topLeft,
																				child: Text(
																					'Card number',
																					style: GoogleFonts.getFont(
																						'Montserrat',
																						fontWeight: FontWeight.w600,
																						fontSize: 12,
																						letterSpacing: -0.2,
																						color: Color(0xFF444444),
																					),
																				),
																			),
																		),
																		Container(
																			decoration: BoxDecoration(
																				color: Color(0xFFDCDCDC),
																			),
																			child: Container(
																				width: 313.9,
																				height: 1,
																			),
																		),
																	],
																),
															),
															Container(
																margin: EdgeInsets.fromLTRB(0.5, 0, 0.5, 32.8),
																child: Align(
																	alignment: Alignment.topLeft,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.start,
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.fromLTRB(0, 0, 0, 0.8),
																				child: Align(
																					alignment: Alignment.topLeft,
																					child: Text(
																						'EXP DATE',
																						style: GoogleFonts.getFont(
																							'Montserrat',
																							fontWeight: FontWeight.w600,
																							fontSize: 12,
																							letterSpacing: -0.2,
																							color: Color(0xFF444444),
																						),
																					),
																				),
																			),
																			Container(
																				margin: EdgeInsets.fromLTRB(9.6, 0, 9.6, 15.9),
																				child: Align(
																					alignment: Alignment.topRight,
																					child: SizedBox(
																						width: 110.4,
																						child: Row(
																							mainAxisAlignment: MainAxisAlignment.spaceBetween,
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								SizedBox(
																									width: 11.5,
																									height: 6,
																									child: SvgPicture.asset(
																										'assets/vectors/VECTOR-21_x4.svg',
																									),
																								),
																								SizedBox(
																									width: 11.5,
																									height: 6,
																									child: SvgPicture.asset(
																										'assets/vectors/VECTOR-22_x4.svg',
																									),
																								),
																							],
																						),
																					),
																				),
																			),
																			SizedBox(
																				width: 167,
																				child: Row(
																					mainAxisAlignment: MainAxisAlignment.spaceBetween,
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								color: Color(0xFFDCDCDC),
																							),
																							child: Container(
																								width: 68.2,
																								height: 1,
																							),
																						),
																						Container(
																							decoration: BoxDecoration(
																								color: Color(0xFFDCDCDC),
																							),
																							child: Container(
																								width: 68.2,
																								height: 1,
																							),
																						),
																					],
																				),
																			),
																		],
																	),
																),
															),
															Container(
																margin: EdgeInsets.fromLTRB(0.5, 0, 0.5, 0),
																child: Align(
																	alignment: Alignment.topLeft,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.start,
																		crossAxisAlignment: CrossAxisAlignment.start,
																		children: [
																			Container(
																				margin: EdgeInsets.fromLTRB(0, 0, 0, 35.7),
																				child: Align(
																					alignment: Alignment.topLeft,
																					child: Text(
																						'CVC',
																						style: GoogleFonts.getFont(
																							'Montserrat',
																							fontWeight: FontWeight.w600,
																							fontSize: 12,
																							letterSpacing: -0.2,
																							color: Color(0xFF444444),
																						),
																					),
																				),
																			),
																			Container(
																				decoration: BoxDecoration(
																					color: Color(0xFFDCDCDC),
																				),
																				child: Container(
																					width: 76.4,
																					height: 1,
																				),
																			),
																		],
																	),
																),
															),
														],
													),
												),
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 0.5, 0),
													child: Align(
														alignment: Alignment.topCenter,
														child: Container(
															decoration: BoxDecoration(
																color: Color(0xFF0E3255),
																borderRadius: BorderRadius.circular(24),
															),
															child: Container(
																width: 230.4,
																padding: EdgeInsets.fromLTRB(6.9, 13.9, 0, 13.8),
																child: Text(
																	'COMFIRM PAYEMENT',
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
							],
						),
					],
				),
			),
		);
	}
}