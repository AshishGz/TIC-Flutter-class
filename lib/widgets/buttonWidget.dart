import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
        elevation: 4.0,
        icon: Icon(
          Icons.people_outline,
          color: Colors.white,
        ),
        color: Theme.of(context).primaryColor,
        onPressed: () {},
        label: Text("Add Team Image",
            style: TextStyle(color: Colors.white, fontSize: 16.0)));

//      IconButton(
//      padding: EdgeInsets.all(30),
//      icon: Icon(
//        Icons.account_balance,
//      ),
//      //color: Colors.amber,
//      onPressed: () {},
//    );
//      FlatButton(
//      onPressed: () {},
//      child: Text('Click Me'),
//      //color: Colors.amber,
//    );
//      RaisedButton(
//      onPressed: () => {log('button is clicked')},
//      child: Text(
//        'Clicked Me',
//        style: TextStyle(color: Colors.white),
//      ),
//      elevation: 2,
//      color: Colors.purple,
//    );
  }
}
