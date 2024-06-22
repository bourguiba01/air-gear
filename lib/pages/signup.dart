import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'CONXION.dart';

class SignUp extends StatelessWidget {
	final TextEditingController fullNameController = TextEditingController();
	final TextEditingController emailController = TextEditingController();
	final TextEditingController passwordController = TextEditingController();
	final TextEditingController confirmPasswordController = TextEditingController();

	void _submitData(BuildContext context) async {
		final fullName = fullNameController.text;
		final email = emailController.text;
		final password = passwordController.text;
		final confirmPassword = confirmPasswordController.text;

		if (fullName.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Please fill in all fields')),
			);
			return;
		}

		if (!RegExp(r"^[a-zA-Z0-9.@]+$").hasMatch(email)) {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Please enter a valid email address')),
			);
			return;
		}

		if (password != confirmPassword) {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Passwords do not match')),
			);
			return;
		}

		if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$').hasMatch(password)) {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Password must be at least 6 characters long, and include at least one letter, one number, and one special character')),
			);
			return;
		}

		var url = Uri.parse('https://shopup.tn/airgear/api/create_account.php');
		var response = await http.post(
			url,
			headers: <String, String>{
				'Content-Type': 'application/json; charset=UTF-8',
			},
			body: jsonEncode(<String, String>{
				'fullName': fullName,
				'email': email,
				'password': password,
			}),
		);

		if (response.statusCode == 200) {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Sign up successful')),
			);
			// Navigate to the login screen
			Navigator.of(context).pushReplacement(
				MaterialPageRoute(builder: (context) => Conxion()),
			);
		} else {
			ScaffoldMessenger.of(context).showSnackBar(
				SnackBar(content: Text('Sign up failed')),
			);
			print(response.body);
		}
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.transparent,
			body: Stack(
				children: [
					Container(
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
					),
					SafeArea(
						child: SingleChildScrollView(
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.stretch,
								children: [
									Container(
										height: MediaQuery.of(context).size.height * 0.2,
										padding: const EdgeInsets.all(16),
										child: Column(
											mainAxisAlignment: MainAxisAlignment.center,
											crossAxisAlignment: CrossAxisAlignment.stretch,
											children: [
												Text(
													'Sign Up',
													style: GoogleFonts.inter(
														fontWeight: FontWeight.w700,
														fontSize: 30,
														color: Colors.white,
													),
													textAlign: TextAlign.center,
												),
											],
										),
									),
									Container(
										padding: EdgeInsets.symmetric(horizontal: 16),
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.stretch,
											children: [
												SizedBox(height: 20),
												Padding(
													padding: const EdgeInsets.symmetric(horizontal: 5),
													child: TextField(
														controller: fullNameController,
														decoration: InputDecoration(
															hintText: 'Full name',
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
												SizedBox(height: 20),
												Padding(
													padding: const EdgeInsets.symmetric(horizontal: 5),
													child: TextField(
														controller: emailController,
														keyboardType: TextInputType.emailAddress,
														decoration: InputDecoration(
															hintText: 'Email',
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
												SizedBox(height: 20),
												TextField(
													controller: passwordController,
													keyboardType: TextInputType.visiblePassword,
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
												TextField(
													controller: confirmPasswordController,
													keyboardType: TextInputType.visiblePassword,
													obscureText: true,
													decoration: InputDecoration(
														hintText: 'Confirm Password',
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
											],
										),
									),
									Container(
										width: MediaQuery.of(context).size.width * 0.8,
										height: MediaQuery.of(context).size.height * 0.2,
										child: Column(
											children: [
												InkWell(
													onTap: () => _submitData(context),
													child: Container(
														alignment: Alignment.center,
														width: MediaQuery.of(context).size.width * 0.8,
														margin: EdgeInsets.all(10),
														decoration: BoxDecoration(
															color: Color(0xFF003D78),
															borderRadius: BorderRadius.circular(10),
														),
														padding: EdgeInsets.all(15),
														child: Text(
															'Sign Up',
															style: GoogleFonts.inter(
																fontWeight: FontWeight.w700,
																fontSize: 15,
																color: Colors.white,
															),
														),
													),
												),
												Row(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Text(
															'Already have an account?  ',
															style: GoogleFonts.inter(
																fontWeight: FontWeight.w400,
																fontSize: 15,
																color: Colors.white,
															),
														),
														GestureDetector(
															onTap: () {
																Navigator.of(context).pushReplacement(
																	MaterialPageRoute(builder: (context) => Conxion()),
																);
															},
															child: Text(
																'Sign In',
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
								],
							),
						),
					),
				],
			),
		);
	}
}

void main() {
	runApp(MaterialApp(
		debugShowCheckedModeBanner: false,
		home: SignUp(),
	));
}
