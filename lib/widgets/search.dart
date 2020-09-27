import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/mycard_model.dart';
import 'package:flutter_class_TIC/widgets/myCard.dart';

import 'myCardWrapper.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyCardWrapper(
          title: 'Your Top Generics',
        ),
        MyCardWrapper(title: 'Browser All')
      ],
    );
  }
}
