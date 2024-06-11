import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool generalNotification = false;
  bool sound = false;
  bool vibrate = false;
  bool newUpdatesAvailable = false;
  bool newServicesAvailable = false;
  bool systemNotifications = false;
  bool marketingNotifications = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(0.933, 1),
                colors: <Color>[Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
                stops: <double>[0, 0.495, 1],
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle arrow tap
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 16,
                      height: 15.6,
                      child: SvgPicture.asset(
                        'assets/vectors/VECTOR-12_x4.svg',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Notifications',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      height: 1.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1, -1),
                  end: Alignment(0.933, 1),
                  colors: <Color>[Color(0xFF0093FF), Color(0xFF003D78), Color(0xFFE22718)],
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
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(7, 40, 7, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('Common'),
                    _buildSwitchRow(
                      'General Notification',
                      generalNotification,
                          (value) {
                        setState(() {
                          generalNotification = value;
                        });
                      },
                    ),
                    _buildSwitchRow(
                      'Sound',
                      sound,
                          (value) {
                        setState(() {
                          sound = value;
                        });
                      },
                    ),
                    _buildSwitchRow(
                      'Vibrate',
                      vibrate,
                          (value) {
                        setState(() {
                          vibrate = value;
                        });
                      },
                    ),
                    _buildDivider(),
                    _buildSectionTitle('System & services update'),
                    _buildSwitchRow(
                      'New Updates Available',
                      newUpdatesAvailable,
                          (value) {
                        setState(() {
                          newUpdatesAvailable = value;
                        });
                      },
                    ),
                    _buildSwitchRow(
                      'New Services Available',
                      newServicesAvailable,
                          (value) {
                        setState(() {
                          newServicesAvailable = value;
                        });
                      },
                    ),
                    _buildSwitchRow(
                      'System Notifications',
                      systemNotifications,
                          (value) {
                        setState(() {
                          systemNotifications = value;
                        });
                      },
                    ),
                    _buildDivider(),
                    _buildSectionTitle('Other Notifications'),
                    _buildSwitchRow(
                      'Marketing Notifications',
                      marketingNotifications,
                          (value) {
                        setState(() {
                          marketingNotifications = value;
                        });
                      },
                    ),
                    SizedBox(height: 30), // Added space at the bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 0, 2, 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: GoogleFonts.getFont(
            'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.5,
            letterSpacing: 0.1,
            color: Color(0xFFFEFEFE),
          ),
        ),
      ),
    );
  }

  Widget _buildSwitchRow(String title, bool value, ValueChanged<bool> onChanged) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: SizedBox(
              width: 292,
              child: Text(
                title,
                style: GoogleFonts.getFont(
                  'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.4,
                  letterSpacing: 0.3,
                  color: Color(0xFFFEFEFE),
                ),
              ),
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Color(0xFF89B9FF),
            inactiveThumbColor: Color(0xFF767676),
            inactiveTrackColor: Color(0xFF434343),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 0, 2, 15),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF434343),
        ),
        child: Container(
          width: double.infinity,
          height: 1,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Setting(),
  ));
}
