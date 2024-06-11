import 'package:flutter/material.dart';
import 'dart:ui'; // for ImageFilter
import 'package:flutter_svg/flutter_svg.dart'; // if you intend to use SVG images
import 'package:google_fonts/google_fonts.dart'; // for custom fonts

class MainPageNotConnected extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		// Get the screen size
		final screenWidth = MediaQuery.of(context).size.width;
		final screenHeight = MediaQuery.of(context).size.height;

		return Scaffold(
			body: Container(
				width: double.infinity,
				height: double.infinity,
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment(-1, -1),
						end: Alignment(0.933, 1),
						colors: [Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
						stops: [0, 0.495, 1],
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
				child: Padding(
					padding: EdgeInsets.fromLTRB(0, screenHeight * 0.2, 0, screenHeight * 0.05),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.start,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: [
							// Title Text
							Container(
								margin: EdgeInsets.only(bottom: screenHeight * 0.1),
								child: Text(
									'Let\'s connect your vehicle',
									style: GoogleFonts.roboto(
										fontWeight: FontWeight.w400,
										fontSize: 24,
										color: Colors.white,
									),
								),
							),
							// Blurred Circle with Plus Sign
							Flexible(
								child: Container(
									margin: EdgeInsets.only(bottom: screenHeight * 0.1),
									child: GestureDetector(
										onTap: () {
											// Handle tap event here
											print('Circle tapped!');
										},
										child: Opacity(
											opacity: 0.7,
											child: ClipRect(
												child: BackdropFilter(
													filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
													child: Container(
														width: screenWidth * 0.4,
														height: screenWidth * 0.4,
														decoration: BoxDecoration(
															borderRadius: BorderRadius.circular(screenWidth * 0.2),
															gradient: RadialGradient(
																center: Alignment(0, 0),
																radius: 0.5,
																colors: [Color(0x661A144E), Color(0x6623287E)],
																stops: [0, 1],
															),
														),
														child: Center(
															child: Text(
																'+',
																style: TextStyle(
																	fontSize: screenWidth * 0.2, // Adjust font size as needed
																	color: Colors.white,
																),
															),
														),
													),
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

void main() {
	runApp(MaterialApp(
		home: MainPageNotConnected(),
	));
}
