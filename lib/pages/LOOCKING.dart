import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Loocking extends StatefulWidget {
	@override
	_LoockingState createState() => _LoockingState();
}

class _LoockingState extends State<Loocking> with SingleTickerProviderStateMixin {
	late AnimationController _controller;

	@override
	void initState() {
		super.initState();
		_controller = AnimationController(
			vsync: this,
			duration: Duration(seconds: 2),
		)..repeat();
	}

	@override
	void dispose() {
		_controller.dispose();
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return Container(
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
			child: Stack(
				children: [
					Container(
						padding: EdgeInsets.fromLTRB(0, 137, 1, 12),
						child: Stack(
							clipBehavior: Clip.none,
							children: [
								SizedBox(
									width: double.infinity,
									child: Column(
										mainAxisAlignment: MainAxisAlignment.start,
										crossAxisAlignment: CrossAxisAlignment.center,
										children: [
											Container(
												margin: EdgeInsets.fromLTRB(0, 0, 1.3, 17),
												child: Text(
													'Looking for your vehicle',
													style: GoogleFonts.roboto(
														fontWeight: FontWeight.w400,
														fontSize: 24,
														color: Color(0xFFFFFFFF),
													),
												),
											),
											Container(
												margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
												child: SizedBox(
													width: 359,
													height: 359,
													child: CustomPaint(
														painter: CirclePainter(animation: _controller),
													),
												),
											),
											GestureDetector(
												onTap: () {
													// Handle cancel button tap
												},
												child: Container(
													margin: EdgeInsets.fromLTRB(0, 0, 1, 100),
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
													width: 200,
													padding: EdgeInsets.fromLTRB(0, 11, 1, 12),
													child: Text(
														'cancel',
														style: GoogleFonts.roboto(
															fontWeight: FontWeight.w400,
															fontSize: 16,
															color: Color(0xFFFFFFFF),
														),
														textAlign: TextAlign.center,
													),
												),
											),
										],
									),
								),
							],
						),
					),
				],
			),
		);
	}
}

class CirclePainter extends CustomPainter {
	final Animation<double> animation;
	CirclePainter({required this.animation}) : super(repaint: animation);

	@override
	void paint(Canvas canvas, Size size) {
		final paint = Paint()..color = Colors.white.withOpacity(0.5);

		final double radius = size.width / 2;

		for (int i = 0; i < 8; i++) {
			final double angle = (i * 2 * math.pi) / 8;

			final Offset offset = Offset(radius + radius * 0.6 * math.cos(angle), radius + radius * 0.6 * math.sin(angle));

			final double animatedValue = (animation.value * 2 * math.pi) + (i * 0.4);

			final double animatedRadius = radius * (0.4 + 0.3 * math.sin(animatedValue));

			canvas.drawCircle(offset, animatedRadius, paint);
		}
	}

	@override
	bool shouldRepaint(CustomPainter oldDelegate) {
		return true;
	}
}
