import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../incl/footer.dart';
import 'BIG-OUTLINE-DEFAULT-1.dart';
import 'BIG-OUTLINE-DEFAULT-2.dart';
import 'BIG-OUTLINE-DEFAULT-3.dart';
import 'BIG-OUTLINE-DEFAULT-4.dart';
import 'BIG-OUTLINE-DEFAULT.dart';
import 'BIG-OUTLINE-SELECT.dart';
import 'BUTTON.dart';

class EditProfile extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Color(0xFF05CAAD), // Setting app bar color
				leading: GestureDetector(
					onTap: () {
						Navigator.of(context).pop();
					},
					child: Row(
						children: [
							Padding(
								padding: const EdgeInsets.all(8.0),
								child: SvgPicture.asset('assets/vectors/VECTOR-35_x4.svg'),
							),


						],
					),


				),
				title: Text(
					'Edit profile',
					style: GoogleFonts.poppins(
						fontWeight: FontWeight.w600,
						fontSize: 22,
						height: 1.3,
						color: Color(0xFFFEFEFE),
					),
				),
				centerTitle: true,
			),
			body: Container(
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment(-1, -1),
						end: Alignment(0.933, 1),
						colors: <Color>[Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
						stops: <double>[0, 0.495, 1],
					),
				),
				child: Container(
					padding: EdgeInsets.all(25),
					width: MediaQuery.of(context).size.width,
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							BigOutlineDefault(),
							SizedBox(height: 15,),
							BigOutlineDefault1(),
							SizedBox(height: 15,),
							BigOutlineDefault2(),
							SizedBox(height: 15,),
							Row(
								children: [
									Expanded(child: BigOutlineSelect()),
									SizedBox(width: 20,),
									Expanded(child: BigOutlineDefault3()),
								],
							),

							SizedBox(height: 15,),
							BigOutlineDefault4(),
							SizedBox(height: 15,),

							Container(
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(8),
									color: Color(0xFF05CAAD),
									boxShadow: [
										BoxShadow(
											color: Color(0x1A000000),
											offset: Offset(0, 1),
											blurRadius: 8,
										),
									],
								),
								padding: EdgeInsets.symmetric(vertical: 11, horizontal: 100),
								child: Text(
									'Submit',
									style: GoogleFonts.roboto(
										fontWeight: FontWeight.w400,
										fontSize: 16,
										color: Colors.white,
									),
								),
							),
							SizedBox(height: 60,),
							Container(
						/*		bottom: MediaQuery.of(context).size.height * 0.05,
								left: 0,
								right: 0,*/
								child: footer(context),
							),
						],
					),
				),
			),

		);
	}
}
