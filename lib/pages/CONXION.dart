import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Conxion extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.transparent,
			body: Container(
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment(-1, -1),
						end: Alignment(0.933, 1),
						colors: <Color>[
							Color(0xFF0093FF),
							Color(0xFF003D78),
							Color(0xFFE22718)
						],
						stops: <double>[0, 0.568, 1],
					),
				),
				child: SafeArea(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: [
							Expanded(
								flex: 2,
								child: Padding(
									padding: const EdgeInsets.all(16),
									child: Column(
										mainAxisAlignment: MainAxisAlignment.center,
										crossAxisAlignment: CrossAxisAlignment.stretch,
										children: [
											Text(
												'Log In',
												style: GoogleFonts.inter(
													fontWeight: FontWeight.w700,
													fontSize: 30,
													color: Colors.white,
												),
												textAlign: TextAlign.center,
											),
											SizedBox(height: 20),
											Padding(
												padding: const EdgeInsets.symmetric(horizontal: 5),
												child: TextField(
													decoration: InputDecoration(
														hintText: 'Email or Phone Number',
														hintStyle: TextStyle(
															fontWeight: FontWeight.w400,
															fontSize: 15,
															color: Color(0xFF003D78),
														),
														filled: true,
														fillColor: Colors.white,
														contentPadding: EdgeInsets.all(15),
														border: OutlineInputBorder(
															borderRadius: BorderRadius.circular(10),
															borderSide: BorderSide.none,
														),
													),
													style: TextStyle(
														fontWeight: FontWeight.w400,
														fontSize: 15,
														color: Colors.black,
													),
												),
											),
										],
									),
								),
							),
							Expanded(
								flex: 3,
								child: Container(
									padding: EdgeInsets.symmetric(horizontal: 16),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.stretch,
										children: [
											TextField(
												obscureText: true,
												decoration: InputDecoration(
													hintText: 'Password',
													hintStyle: TextStyle(
														fontWeight: FontWeight.w400,
														fontSize: 15,
														color: Color(0xFF003D78),
													),
													filled: true,
													fillColor: Colors.white,
													contentPadding: EdgeInsets.all(15),
													border: OutlineInputBorder(
														borderRadius: BorderRadius.circular(10),
														borderSide: BorderSide.none,
													),
												),
												style: TextStyle(
													fontWeight: FontWeight.w400,
													fontSize: 15,
													color: Colors.black,
												),
											),
											SizedBox(height: 20),
											GestureDetector(
												onTap: () {
													// Add your forget password logic here
												},
												child: Text(
													'Forget Password?',
													style: GoogleFonts.inter(
														fontWeight: FontWeight.w700,
														fontSize: 15,
														color: Colors.white,
													),
													textAlign: TextAlign.center,
												),
											),
											SizedBox(height: 20),
											ElevatedButton(
												onPressed: () {
													// Add your sign in logic here
												},
												style: ElevatedButton.styleFrom(
													backgroundColor: Color(0xFF003D78),
													padding: EdgeInsets.symmetric(vertical: 15),
													shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.circular(10),
													),
												),
												child: Text(
													'Sign in',
													style: GoogleFonts.inter(
														fontWeight: FontWeight.w700,
														fontSize: 15,
														color: Colors.white,
													),
												),
											),
											SizedBox(height: 20),
											Row(
												mainAxisAlignment: MainAxisAlignment.center,
												children: [
													Text(
														'Don’t have an account? ',
														style: GoogleFonts.inter(
															fontWeight: FontWeight.w400,
															fontSize: 15,
															color: Colors.white,
														),
													),
													GestureDetector(
														onTap: () {
															// Add your sign up logic here
														},
														child: Text(
															'Sign Up',
															style: GoogleFonts.inter(
																fontWeight: FontWeight.w700,
																fontSize: 15,
																color: Colors.white,
															),
														),
													),
												],
											),
											SizedBox(height: 20),
											Divider(color: Color(0xFF003D78)),
											SizedBox(height: 20),
											GestureDetector(
												onTap: () {
													// Add your logic for social sign-in here
												},
												child: Text(
													'Or sign in with',
													textAlign: TextAlign.center,
													style: GoogleFonts.inter(
														fontWeight: FontWeight.w400,
														fontSize: 15,
														color: Colors.white,
													),
												),
											),
											SizedBox(height: 20),
											Row(
												mainAxisAlignment: MainAxisAlignment.center,
												children: [
													GestureDetector(
														onTap: () {
															// Add your logic for the first social sign-in here
														},
														child: _buildSocialIcon('assets/vectors/DEVICONGOOGLE_x4.svg'),
													),
													SizedBox(width: 20),
													GestureDetector(
														onTap: () {
															// Add your logic for the second social sign-in here
														},
														child: _buildSocialIcon('assets/vectors/LOGOSFACEBOOK_x4.svg'),
													),
													SizedBox(width: 20),
													GestureDetector(
														onTap: () {
															// Add your logic for the third social sign-in here
														},
														child: _buildSocialIcon('assets/vectors/VECTOR-20_x4.svg'),
													),
													SizedBox(width: 20),
													GestureDetector(
														onTap: () {
															// Add your logic for the fourth social sign-in here
														},
														child: _buildSocialIcon('assets/vectors/VECTOR-19_x4.svg'),
													),
												],
											),
										],
									),
								),
							),
						],
					),
				),
			),
		);
	}

	Widget _buildSocialIcon(String iconPath) {
		return Container(
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.circular(22),
			),
			width: 44.1,
			height: 44.1,
			padding: EdgeInsets.all(8.8),
			child: SvgPicture.asset(
				iconPath,
			),
		);
	}
}

void main() {
	runApp(MaterialApp(
		debugShowCheckedModeBanner: false,
		home: Conxion(),
	));
}
