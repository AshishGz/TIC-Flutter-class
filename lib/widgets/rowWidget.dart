import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 1, child: Text('thisz is 1')),
        Expanded(flex: 1, child: Text('this is 2')),
        Expanded(flex: 3, child: Text('this is 2')),
      ],
    );
  }
}
