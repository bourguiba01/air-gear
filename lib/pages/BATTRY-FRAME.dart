import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
	runApp(MaterialApp(
		home: BatteryFrame(),
	));
}

class BatteryFrame extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Color(0xFF05CAAD), // Setting app bar color
				leading: GestureDetector(
					onTap: () {
						Navigator.of(context).pop();
					},
					child: Padding(
						padding: const EdgeInsets.all(8.0),
						child: SvgPicture.asset('assets/vectors/VECTOR-35_x4.svg'),
					),
				),
			),
			body: Container(
				width: double.infinity,
				height: double.infinity,
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment.topLeft,
						end: Alignment.bottomRight,
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
				padding: EdgeInsets.fromLTRB(
					9,
					MediaQuery.of(context).padding.top + 10,
					9,
					17,
				),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						_buildBatteryInfo(
							'Battery',
							'RF:000002',
							'assets/vectors/VECTOR-37_x4.svg',
							'assets/vectors/VECTOR-51_x4.svg',
							context,
						),
						SizedBox(height: 25),
						_buildBatteryInfo(
							'Battery',
							'RF:000001',
							'assets/vectors/VECTOR-55_x4.svg',
							'assets/vectors/VECTOR-56_x4.svg',
							context,
						),
						SizedBox(height: 25),
						_buildBatteryInfo(
							'Scouter',
							'RF:000001',
							'assets/vectors/VECTOR-42_x4.svg',
							'assets/vectors/VECTOR-31_x4.svg',
							context,
						),
						SizedBox(height: 98.7),
						_buildScanButton(context),
					],
				),
			),
		);
	}

	Widget _buildBatteryInfo(String title, String rfId, String vector1, String vector2, BuildContext context) {
		return GestureDetector(
			onTap: () {
				print('Battery box clicked');
			},
			child: Container(
				width: MediaQuery.sizeOf(context).width*0.8,
				padding: EdgeInsets.all(20),
				decoration: BoxDecoration(
					border: Border.all(color: Color(0xFFD6D6D6)),
					borderRadius: BorderRadius.circular(20),
				),
				child: Stack(
					clipBehavior: Clip.none,
					children: [
						Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text(
									title,
									style: GoogleFonts.rubik(
										fontWeight: FontWeight.w400,
										fontSize: 20,
										color: Colors.white,
										decoration: TextDecoration.underline,
									),
								),
								SizedBox(height: 12),
								Text(
									rfId,
									style: GoogleFonts.rubik(
										fontWeight: FontWeight.w400,
										fontSize: 16,
										color: Colors.white,
									),
								),
							],
						),
						Positioned(
							right: 0,
							top: 0,
							child: GestureDetector(
								onTap: () {
									print('Pin clicked');
								},
								child: Column(
									children: [
										SvgPicture.asset(vector1, width: 20, height: 20),
										SizedBox(height: 20),
										GestureDetector(
											onTap: () {
												print('Garbage can clicked');
											},
											child: SvgPicture.asset(vector2, width: 20, height: 20),
										),
									],
								),
							),
						),
					],
				),
			),
		);
	}

	Widget _buildScanButton(BuildContext context) {
		return GestureDetector(
			onTap: () {
				print('Scan button clicked');
			},
			child: Container(
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
					'Scan',
					style: GoogleFonts.roboto(
						fontWeight: FontWeight.w400,
						fontSize: 16,
						color: Colors.white,
					),
				),
			),
		);
	}
}
