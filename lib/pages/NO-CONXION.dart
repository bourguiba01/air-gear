import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoConxion extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				width: double.infinity,
				height: double.infinity,
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment(-1, -1),
						end: Alignment(0.933, 1),
						colors: <Color>[Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
						stops: <double>[0, 0.568, 1],
					),
					boxShadow: [
						BoxShadow(
							color: Color(0x66000000),
							offset: Offset(-30, 39),
							blurRadius: 15,
						),
					],
				),
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Container(
								width: MediaQuery.of(context).size.width * 0.3,
								height: MediaQuery.of(context).size.height * 0.3,
								child: SvgPicture.asset(
									'assets/vectors/GROUP-2_x4.svg',
								),
							),
							SizedBox(height: 20),
							Text(
								'Check your internet!',
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontWeight: FontWeight.w600,
									fontSize: 20,
									height: 1.3,
									color: Color(0xFF03314B),
								),
							),
						],
					),
				),
			),
		);
	}
}
