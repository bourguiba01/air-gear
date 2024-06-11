import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatefulWidget {
	@override
	_LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
	String _selectedLanguage = 'English (UK)'; // Default selected language

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.transparent,
				elevation: 0,
				leading: GestureDetector(
					onTap: () {
						Navigator.of(context).pop(); // Navigate back
					},
					child: SvgPicture.asset(
						'assets/vectors/VECTOR-43_x4.svg',
						width: 16,
						height: 15.6,
						color: Colors.white,
					),
				),
				title: Text(
					'Language',
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
				width: double.infinity,
				height: double.infinity,
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
				child: Padding(
					padding: EdgeInsets.fromLTRB(7, 99, 7, 13),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							SizedBox(height: 35),
							Padding(
								padding: EdgeInsets.symmetric(horizontal: 4),
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										_buildLanguageOption('English (US)'),
										_buildLanguageOption('English (UK)'),
									],
								),
							),
							Divider(color: Color(0xFF434343), thickness: 1),
							SizedBox(height: 20),
							Text(
								'Others',
								style: GoogleFonts.poppins(
									fontWeight: FontWeight.w600,
									fontSize: 16,
									height: 1.5,
									letterSpacing: 0.1,
									color: Color(0xFFFEFEFE),
								),
							),
							SizedBox(height: 14),
							_buildLanguageOption('Mandarin'),
							_buildLanguageOption('Hindi'),
							_buildLanguageOption('Spanish'),
							_buildLanguageOption('French'),
							_buildLanguageOption('Arabic'),
							_buildLanguageOption('Russian'),
							_buildLanguageOption('Indonesian'),
							_buildLanguageOption('Vietnamese'),
							Spacer(),
						],
					),
				),
			),
		);
	}

	Widget _buildLanguageOption(String language) {
		bool isSelected = language == _selectedLanguage;
		return GestureDetector(
			onTap: () {
				setState(() {
					_selectedLanguage = language; // Update selected language
				});
			},
			child: Padding(
				padding: EdgeInsets.symmetric(vertical: 8.0),
				child: Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: [
						Expanded(
							child: Text(
								language,
								style: GoogleFonts.roboto(
									fontWeight: FontWeight.w400,
									fontSize: 14,
									height: 1.4,
									letterSpacing: 0.3,
									color: Color(0xFFFEFEFE),
								),
							),
						),
						Container(
							width: 24,
							height: 24,
							decoration: BoxDecoration(
								color: isSelected ? Color(0xFF89B9FF) : Color(0xFF030E1E),
								borderRadius: BorderRadius.circular(12),
							),
							child: isSelected
									? Center(
								child: Container(
									width: 12,
									height: 12,
									decoration: BoxDecoration(
										color: Color(0xFF202020),
										borderRadius: BorderRadius.circular(6),
									),
								),
							)
									: SizedBox.shrink(),
						),
					],
				),
			),
		);
	}
}
