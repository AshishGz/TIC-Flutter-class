import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/mycard_model.dart';

class MyCard extends StatelessWidget {
  MyCardModel myCardModel;
  MyCard({this.myCardModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      height: 100,
      padding: EdgeInsets.all(12),
      color: myCardModel.color,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              myCardModel.title,
              maxLines: 3,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
          ),
          Expanded(
              child: Icon(
            myCardModel.icon,
            color: Colors.white,
            size: 60,
          ))
        ],
      ),
    );
  }
}
