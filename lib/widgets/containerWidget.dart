import 'dart:developer';

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      splashColor: Colors.grey,
      onTap: () {
        log('Container is clicked');
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green.shade900,
        ),
        padding: EdgeInsets.all(10),
        //color: Colors.greenAccent.shade700,
        child: Center(
          child: Text(
            'THis is COntainer',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ),
        width: screenWidth,
        height: screenHeight / 6,
      ),
    );
  }
}
