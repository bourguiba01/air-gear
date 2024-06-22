import 'package:flutter/material.dart';

import '../pages/maps.dart';

Widget footer(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.6),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home_outlined),
        InkWell(
          onTap: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => MapScreen()),
            );

          },
          child:        Icon(Icons.map_outlined),

        ),

        Icon(Icons.document_scanner_outlined),
        Icon(Icons.tag),
        Icon(Icons.face),
      ],
    ),
  );
}
