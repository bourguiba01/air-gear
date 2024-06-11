import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatefulWidget {
	@override
	_EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
	TextEditingController _nameController = TextEditingController();
	TextEditingController _emailController = TextEditingController();
	TextEditingController _phoneController = TextEditingController();

	@override
	void initState() {
		super.initState();
		// Fetch user data and initialize controllers with user's information
		_nameController.text = "John Doe"; // Example name
		_emailController.text = "johndoe@example.com"; // Example email
		_phoneController.text = "+1234567890"; // Example phone number
	}

	@override
	void dispose() {
		// Dispose controllers
		_nameController.dispose();
		_emailController.dispose();
		_phoneController.dispose();
		super.dispose();
	}

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
				child: SingleChildScrollView(
					padding: EdgeInsets.all(20.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							SizedBox(height: 60.0),
							Center(
								child: Text(
									'Edit Profile',
									style: GoogleFonts.getFont(
										'Source Sans 3',
										fontWeight: FontWeight.w700,
										fontSize: 24,
										height: 1.3,
										color: Colors.white,
									),
								),
							),
							SizedBox(height: 40.0),
							Text(
								'Name',
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontWeight: FontWeight.bold,
									fontSize: 18,
									color: Colors.white,
								),
							),
							TextField(
								controller: _nameController,
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontSize: 16,
									color: Colors.white,
								),
								decoration: InputDecoration(
									hintText: 'Enter your name',
									hintStyle: TextStyle(color: Colors.white70),
									enabledBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white70),
									),
									focusedBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white),
									),
								),
							),
							SizedBox(height: 20.0),
							Text(
								'Email',
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontWeight: FontWeight.bold,
									fontSize: 18,
									color: Colors.white,
								),
							),
							TextField(
								controller: _emailController,
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontSize: 16,
									color: Colors.white,
								),
								decoration: InputDecoration(
									hintText: 'Enter your email',
									hintStyle: TextStyle(color: Colors.white70),
									enabledBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white70),
									),
									focusedBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white),
									),
								),
							),
							SizedBox(height: 20.0),
							Text(
								'Phone Number',
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontWeight: FontWeight.bold,
									fontSize: 18,
									color: Colors.white,
								),
							),
							TextField(
								controller: _phoneController,
								style: GoogleFonts.getFont(
									'Source Sans 3',
									fontSize: 16,
									color: Colors.white,
								),
								decoration: InputDecoration(
									hintText: 'Enter your phone number',
									hintStyle: TextStyle(color: Colors.white70),
									enabledBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white70),
									),
									focusedBorder: UnderlineInputBorder(
										borderSide: BorderSide(color: Colors.white),
									),
								),
							),
							SizedBox(height: 40.0),
							Center(
								child: ElevatedButton(
									onPressed: () {
										// Handle saving edited information
										String newName = _nameController.text;
										String newEmail = _emailController.text;
										String newPhone = _phoneController.text;
										// Do something with the new information (e.g., update database)
										print('New Name: $newName');
										print('New Email: $newEmail');
										print('New Phone: $newPhone');
										// Show a snackbar or navigate back to previous screen
										ScaffoldMessenger.of(context).showSnackBar(
											SnackBar(
												content: Text('Profile updated successfully!'),
											),
										);
									},
									style: ElevatedButton.styleFrom(
										backgroundColor: Color(0xFF05CAAD),
										padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
										textStyle: GoogleFonts.getFont(
											'Source Sans 3',
											fontWeight: FontWeight.w600,
											fontSize: 16,
											color: Colors.white,
										),
									),
									child: Text('Save'),
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
		home: EditProfilePage(),
	));
}
