import 'package:flutter/material.dart';

import 'package:flutter_app/pages/BATTRY-FRAME.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-DEFAULT.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-DEFAULT-1.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-DEFAULT-2.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-DEFAULT-3.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-DEFAULT-4.dart';
import 'package:flutter_app/pages/BIG-OUTLINE-SELECT.dart';
import 'package:flutter_app/pages/BUTTON.dart';
import 'package:flutter_app/pages/CONXION.dart';
import 'package:flutter_app/pages/EDIT-PROFILE.dart';
import 'package:flutter_app/pages/FLUSH-SCREEN.dart';
import 'package:flutter_app/pages/FRAME-8.dart';
import 'package:flutter_app/pages/GROUP-23.dart';
import 'package:flutter_app/pages/GROUP-66.dart';
import 'package:flutter_app/pages/GROUP-70.dart';
import 'package:flutter_app/pages/GROUP-71.dart';
import 'package:flutter_app/pages/HEADER.dart';
import 'package:flutter_app/pages/LANGUGE.dart';
import 'package:flutter_app/pages/LOOCKING.dart';
import 'package:flutter_app/pages/MAIN-PAGE-CONACTED.dart';
import 'package:flutter_app/pages/MAIN-PAGE-NOT-CONCTED.dart';
import 'package:flutter_app/pages/NO-CONXION.dart';
import 'package:flutter_app/pages/PAY-PAGE.dart';
import 'package:flutter_app/pages/PERSONALE-INFORAMTION.dart';
import 'package:flutter_app/pages/SETTING.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter App',
			home: Scaffold(

				//body: BatteryFrame(),
				// body: BigOutlineDefault(),
				// body: BigOutlineDefault1(),
				// body: BigOutlineDefault2(),
				// body: BigOutlineDefault3(),
				// body: BigOutlineDefault4(),
				//body: BigOutlineSelect(),
				//body: BottomBarButton (),
				// body: Conxion(),
				//body: EditProfile(),
				//body: FlushScreen(),
				// body: Frame8(),
				// body: Group23(),
				// body: Group66(),
				// body: Group70(),
				//body: Group71(),
				//body: Header(),
				//body: Language (),
				 //  body: Loocking(),
				body: MainPageConacted(),
				 //body: MainPageNotConnected  (),
				//body: NoConxion(),
				// body: PayPage(),
				// body:  EditProfilePage(),
				 //body: Setting(),

			),
		);
	}
}


