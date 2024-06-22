import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'MAIN-PAGE-CONACTED.dart';
import 'signup.dart';

class Conxion extends StatefulWidget {
	@override
	_ConxionState createState() => _ConxionState();
}

class _ConxionState extends State<Conxion> {
	final _formKey = GlobalKey<FormState>();
	final TextEditingController _emailController = TextEditingController();
	final TextEditingController _passwordController = TextEditingController();

	Future<void> _submitData() async {
		if (_formKey.currentState!.validate()) {
			final email = _emailController.text;
			final password = _passwordController.text;

			var url = Uri.parse('https://shopup.tn/airgear/api/login.php');
			var response = await http.post(
				url,
				headers: <String, String>{
					'Content-Type': 'application/json; charset=UTF-8',
				},
				body: jsonEncode(<String, String>{
					'email': email,
					'password': password,
				}),
			);
				print(response.body) ;
			if (response.statusCode == 200) {
				var responseData = jsonDecode(response.body);
				ScaffoldMessenger.of(context).showSnackBar(
					SnackBar(content: Text('Login successful')),
				);

				// Store client data in shared preferences
				SharedPreferences prefs = await SharedPreferences.getInstance();
				await prefs.setString('id', responseData['id'].toString());
				await prefs.setString('fullName', responseData['fullName'].toString());
				await prefs.setString('email', responseData['email'].toString());
				print('go to the main page ') ;
				Navigator.of(context).pushReplacement(
					MaterialPageRoute(builder: (context) => MainPageConacted()),
				);


				// Navigate to the next screen or perform other actions on successful login
			} else {
				ScaffoldMessenger.of(context).showSnackBar(
					SnackBar(content: Text('Login failed: ${response.body}')),
				);
			}
		}
	}

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
					child: Form(
						key: _formKey,
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
													child: TextFormField(
														controller: _emailController,
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
														validator: (value) {
															if (value == null || value.isEmpty) {
																return 'Please enter your email or phone number';
															}
															return null;
														},
														keyboardType: TextInputType.emailAddress, // Set email keyboard type
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
												TextFormField(
													controller: _passwordController,
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
													validator: (value) {
														if (value == null || value.isEmpty) {
															return 'Please enter your password';
														}
														return null;
													},
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
													onPressed: _submitData,
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
																Navigator.push(
																	context,
																	MaterialPageRoute(builder: (context) => SignUp()),
																);
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
											],
										),
									),
								),
							],
						),
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
