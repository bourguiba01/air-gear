import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageConacted extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(

			
		  body: Center(
		    child: Container(
		  		padding: EdgeInsets.only(top: 25),
		    	decoration: BoxDecoration(
		    		gradient: LinearGradient(
		    			begin: Alignment(-1, -1),
		    			end: Alignment(0.933, 1),
		    			colors: [Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
		    			stops: [0, 0.568, 1],
		    		),
		    		boxShadow: [
		    			BoxShadow(
		    				color: Color(0x66000000),
		    				offset: Offset(-30, 39),
		    				blurRadius: 15,
		    			),
		    		],
		    	),
		    	child: Stack(
		    		children: [
		    /*			Positioned(
		    				left: 26,
		    				top: 31,
		    				child: SizedBox(
		    					width: 67,
		    					height: 55,
		    			//		child: SvgPicture.asset('assets/vectors/VECTOR-40_x4.svg'),
		    				),
		    			),
		    		*/	Container(

		    				padding: EdgeInsets.fromLTRB(8, 61, 6, 17),
		    				child: Row(
		    					crossAxisAlignment: CrossAxisAlignment.start,
		    					children: [
		    						BatteryInfo(),
		    						SizedBox(height: 20),
		  							Column(
		  								children: [
		  									BatteryTempInfo(),
		  									SizedBox(height: 20),
		  									TotalDistanceInfo(),
												SizedBox(height: MediaQuery.sizeOf(context).height*0.52,),
												Container(
													alignment: Alignment.center,
													width: MediaQuery.sizeOf(context).width*0.2,
													decoration: BoxDecoration(
														color: Colors.cyan
													),
												child:Icon(Icons.ice_skating)
												),
		  								],
		  							)

		    					],
		    				),
		    			),
		    		],
		    	),
		    ),
		  ),
		);
	}
}

class BatteryInfo extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.all(20),
			decoration: BoxDecoration(
					color: Color(0xFF182724),
					borderRadius: BorderRadius.circular(16.6),
					boxShadow: [
					BoxShadow(
					color: Color(0x40000000),
			offset: Offset(0, 3.3),
			blurRadius: 14.9289941788,
		),
			]),
			width: MediaQuery.sizeOf(context).width*0.5,
height: MediaQuery.sizeOf(context).height*0.3,
			margin: EdgeInsets.fromLTRB(9, 0, 6.1, 11.4),
			child: Column(
			//	mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: [
					BatteryStatus(),

					SavingMode(),
				],
			),
		);
	}
}

class BatteryStatus extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Expanded(
			child: Container(
				padding: EdgeInsets.fromLTRB(16.6, 16.6, 17.3, 17),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						BatteryLabel(),
						BatteryPercentage(),
					],
				),
			),
		);
	}
}

class BatteryLabel extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 16.7),
			child: Align(
				alignment: Alignment.topLeft,
				child: Text(
					'Battery',
					style: GoogleFonts.montserrat(
						fontWeight: FontWeight.w600,
						fontSize: 11.6,
						color: Colors.white,
					),
				),
			),
		);
	}
}

class BatteryPercentage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 16.6),
			child: Align(
				alignment: Alignment.topLeft,
				child: SizedBox(
					height: 132.7,
					child: Stack(
						clipBehavior: Clip.none,
						children: [
							Positioned(
								right: 0.1,
								bottom: 0,
								child: Container(
									decoration: BoxDecoration(
										gradient: LinearGradient(
											begin: Alignment(-0.25, -1),
											end: Alignment(1.329, 1.636),
											colors: [Color(0xFF01F2CF), Color(0xFF03DA9A), Color(0xFF03B3DA)],
											stops: [0, 0.448, 1],
										),
										borderRadius: BorderRadius.only(
											bottomRight: Radius.circular(18.4),
											bottomLeft: Radius.circular(18.4),
										),
									),
									child: Container(
										width: 91.8,
										height: 93,
									),
								),
							),
							Container(
								height: 132.6,
								decoration: BoxDecoration(
									border: Border.all(color: Color(0xD1FFFFFF)),
									borderRadius: BorderRadius.circular(18.5),
									color: Colors.green
								),
								child: Center(
									child: Text(
										'80%',
										style: GoogleFonts.montserrat(
											fontWeight: FontWeight.w700,
											fontSize: 39.5,
											color: Colors.white,
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

class SavingMode extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 15.8),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: [
					Text(
						'Saving mode',
						style: GoogleFonts.montserrat(
							fontWeight: FontWeight.w600,
							fontSize: 10,
							color: Colors.white,
						),
					),

					SvgPicture.asset(
						'assets/vectors/GROUP-83_x4.svg',
						width: 29.2,
						height: 13.3,
					),
				],
			),
		);
	}
}

class BatteryTempInfo extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: MediaQuery.sizeOf(context).height*0.13,
			width: MediaQuery.sizeOf(context).width*0.4,
			decoration: BoxDecoration(
					color: Color(0xFF182724),
					borderRadius: BorderRadius.circular(16.6),
					boxShadow: [
					BoxShadow(
					color: Color(0x40000000),
			offset: Offset(0, 3.3),
			blurRadius: 14.9289941788,
		),
		]
			),
			padding: EdgeInsets.fromLTRB(16.6, 15.8, 0, 14.8),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.center,
				children: [
					Text(
						'battery temp',
						style: GoogleFonts.montserrat(
							fontWeight: FontWeight.w600,
							fontSize: 11.6,
							color: Colors.white,
						),
					),
					SizedBox(height: 10),
					Row(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: [
							Text(
								//textAlign: TextAlignVertical.center,
								'32',
								style: GoogleFonts.montserrat(
									fontWeight: FontWeight.w700,
									fontSize: 29.9,
									color: Colors.white,
								),
							),
							Text(
								'c',
								style: GoogleFonts.montserrat(
									fontWeight: FontWeight.w600,
									fontSize: 8.3,
									color: Color(0x80FBFFFE),
								),
							),
						],
					),
					Text(
						'Optimum',
						style: GoogleFonts.montserrat(
							fontWeight: FontWeight.w600,
							fontSize: 10,
							color: Color(0xFF01F2CF),
						),
					),
				],
			),
		);
	}
}

class TotalDistanceInfo extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: MediaQuery.sizeOf(context).height*0.15,
			width: MediaQuery.sizeOf(context).width*0.4,
			decoration: BoxDecoration(
				color: Color(0xFF182724),
				borderRadius: BorderRadius.circular(16.6),
				boxShadow: [
					BoxShadow(
						color: Color(0x40000000),
						offset: Offset(0, 3.3),
						blurRadius: 14.9289941788,
					),
				],
			),
			padding: EdgeInsets.all(16.6),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text(
						'Total Distance',
						style: GoogleFonts.montserrat(
							fontWeight: FontWeight.w600,
							fontSize: 11.6,
							color: Colors.white,
						),
					),
					SizedBox(height: 18),
					Row(
						children: [
							SvgPicture.asset(
								'assets/vectors/VECTOR-23_x4.svg',
								width: 16.6,
								height: 16.6,
							),
							SizedBox(width: 10),
							Text(
								'20,000 Km',
								style: GoogleFonts.montserrat(
									fontWeight: FontWeight.w700,
									fontSize: 14.9,
									color: Colors.white,
								),
							),
						],
					),
					SizedBox(height: 10),
					Text(
						'Check Mileage',
						style: GoogleFonts.montserrat(
							fontWeight: FontWeight.w600,
							fontSize: 10,
							color: Color(0xFF01F2CF),
						),
					),
				],
			),
		);
	}
}
