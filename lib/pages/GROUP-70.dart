import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group70 extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return 
		Column(
			mainAxisAlignment: MainAxisAlignment.start,
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				Container(
					margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(8),
						color: Color(0xFF000000),
						boxShadow: [
							BoxShadow(
								color: Color(0x40000000),
								offset: Offset(0, 1),
								blurRadius: 2,
							),
						],
					),
					child: Container(
						padding: EdgeInsets.fromLTRB(18, 16, 24, 13),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
									child: Align(
										alignment: Alignment.topLeft,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 1, 15, 1),
													width: 20,
													height: 18,
													child: SizedBox(
														width: 20,
														height: 18,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-22_x4.svg',
														),
													),
												),
												Text(
													'Edit profile information',
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
										),
									),
								),
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
									child: Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Row(
												mainAxisAlignment: MainAxisAlignment.start,
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
														width: 20,
														height: 21,
														child: SizedBox(
															width: 20,
															height: 21,
															child: SvgPicture.asset(
																'assets/vectors/VECTOR-26_x4.svg',
															),
														),
													),
													Container(
														margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
														child: Text(
															'Notifications',
															style: GoogleFonts.getFont(
																'Roboto',
																fontWeight: FontWeight.w400,
																fontSize: 14,
																height: 1.4,
																letterSpacing: 0.3,
																color: Color(0xFFFEFEFE),
															),
														),
													),
												],
											),
											Container(
												margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
												child: Text(
													'ON',
													style: GoogleFonts.getFont(
														'Roboto',
														fontWeight: FontWeight.w400,
														fontSize: 14,
														height: 1.4,
														letterSpacing: 0.3,
														color: Color(0xFF89B9FF),
													),
												),
											),
										],
									),
								),
								Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 14.1, 1),
													width: 20.9,
													height: 19,
													child: SizedBox(
														width: 20.9,
														height: 19,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-6_x4.svg',
														),
													),
												),
												Text(
													'Language',
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
										),
										Text(
											'English',
											style: GoogleFonts.getFont(
												'Roboto',
												fontWeight: FontWeight.w400,
												fontSize: 14,
												height: 1.4,
												letterSpacing: 0.3,
												color: Color(0xFF89B9FF),
											),
										),
									],
								),
							],
						),
					),
				),
				Container(
					margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(8),
						color: Color(0xFF000000),
						boxShadow: [
							BoxShadow(
								color: Color(0x40000000),
								offset: Offset(0, 1),
								blurRadius: 2,
							),
						],
					),
					child: Container(
						padding: EdgeInsets.fromLTRB(17, 16, 24, 15),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
									child: Align(
										alignment: Alignment.topLeft,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 1, 14, 1),
													width: 22,
													height: 18,
													child: SizedBox(
														width: 22,
														height: 18,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-52_x4.svg',
														),
													),
												),
												Text(
													'Security',
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
										),
									),
								),
								Container(
									margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
									child: Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Row(
												mainAxisAlignment: MainAxisAlignment.start,
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: EdgeInsets.fromLTRB(0, 0, 15.7, 0),
														width: 18.3,
														height: 20,
														child: SizedBox(
															width: 18.3,
															height: 20,
															child: SvgPicture.asset(
																'assets/vectors/VECTOR-25_x4.svg',
															),
														),
													),
													Text(
														'Theme',
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
											),
											Text(
												'Light mode',
												style: GoogleFonts.getFont(
													'Roboto',
													fontWeight: FontWeight.w400,
													fontSize: 14,
													height: 1.4,
													letterSpacing: 0.3,
													color: Color(0xFF89B9FF),
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
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(8),
						color: Color(0xFF000000),
						boxShadow: [
							BoxShadow(
								color: Color(0x40000000),
								offset: Offset(0, 1),
								blurRadius: 2,
							),
						],
					),
					child: Container(
						padding: EdgeInsets.fromLTRB(18, 15, 0, 13),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.start,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
									child: Align(
										alignment: Alignment.topLeft,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
													width: 22,
													height: 21,
													child: SizedBox(
														width: 22,
														height: 21,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-7_x4.svg',
														),
													),
												),
												Container(
													margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
													child: Text(
														'Help & Support',
														style: GoogleFonts.getFont(
															'Roboto',
															fontWeight: FontWeight.w400,
															fontSize: 14,
															height: 1.4,
															letterSpacing: 0.3,
															color: Color(0xFFFEFEFE),
														),
													),
												),
											],
										),
									),
								),
								Container(
									margin: EdgeInsets.fromLTRB(0, 0, 0, 15.5),
									child: Align(
										alignment: Alignment.topLeft,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 1, 15, 0),
													width: 20,
													height: 19.5,
													child: SizedBox(
														width: 20,
														height: 19.5,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-49_x4.svg',
														),
													),
												),
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 0, 0.5),
													child: Text(
														'Contact us',
														style: GoogleFonts.getFont(
															'Roboto',
															fontWeight: FontWeight.w400,
															fontSize: 14,
															height: 1.4,
															letterSpacing: 0.3,
															color: Color(0xFFFEFEFE),
														),
													),
												),
											],
										),
									),
								),
								Container(
									margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
									child: Align(
										alignment: Alignment.topLeft,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.start,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Container(
													margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
													width: 18,
													height: 21,
													child: SizedBox(
														width: 18,
														height: 21,
														child: SvgPicture.asset(
															'assets/vectors/VECTOR-18_x4.svg',
														),
													),
												),
												Container(
													margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
													child: Text(
														'Privacy policy',
														style: GoogleFonts.getFont(
															'Roboto',
															fontWeight: FontWeight.w400,
															fontSize: 14,
															height: 1.4,
															letterSpacing: 0.3,
															color: Color(0xFFFEFEFE),
														),
													),
												),
											],
										),
									),
								),
							],
						),
					),
				),
			],
		);
	}
}