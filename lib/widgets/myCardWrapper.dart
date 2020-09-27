import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/mycard_model.dart';

import 'myCard.dart';

class MyCardWrapper extends StatelessWidget {
  double sizeBoxHeight = 16.0;
  String title;
  MyCardWrapper({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              right: sizeBoxHeight, left: sizeBoxHeight, top: sizeBoxHeight),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: sizeBoxHeight),
        Padding(
          padding: EdgeInsets.only(right: sizeBoxHeight, left: sizeBoxHeight),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                      title: 'Rock',
                      icon: Icons.rotate_90_degrees_ccw,
                      color: Color(0xffff2d2f)),
                ),
              ),
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                      title: 'Indie',
                      icon: Icons.info_outline,
                      color: Color(0xff492afb)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: sizeBoxHeight),
        Padding(
          padding: EdgeInsets.only(right: sizeBoxHeight, left: sizeBoxHeight),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                      title: 'Folk & Aqustic',
                      icon: Icons.music_note,
                      color: Color(0xff00927d)),
                ),
              ),
              Expanded(
                child: MyCard(
                  myCardModel: MyCardModel(
                      title: 'Indie',
                      icon: Icons.info_outline,
                      color: Color(0xffff6332)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
