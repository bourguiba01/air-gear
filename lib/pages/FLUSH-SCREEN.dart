import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CONXION.dart';

void main() {
	runApp(MaterialApp(
		home: FlushScreen(),
	));
}

class FlushScreen extends StatefulWidget {
	@override
	_FlushScreenState createState() => _FlushScreenState();
}

class _FlushScreenState extends State<FlushScreen> {
	@override
	void initState() {
		super.initState();
		Future.delayed(Duration(seconds: 3), () {
			Navigator.pushReplacement(
				context,
				MaterialPageRoute(builder: (context) => Conxion()),
			);
		});
	}

	@override
	Widget build(BuildContext context) {
		final double screenHeight = MediaQuery.of(context).size.height;

		return Scaffold(
			body: Container(
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
				child: Center(
					child: Padding(
						padding: EdgeInsets.symmetric(vertical: screenHeight * 0.1),
						child: SizedBox(
							width: 98,
							height: 98,
							child: SvgPicture.asset(
								'assets/vectors/VECTOR-62_x4.svg', // Assurez-vous que ce chemin est correct
							),
						),
					),
				),
			),
		);
	}
}
