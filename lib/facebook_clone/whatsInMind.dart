import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/widgets/form/myCoustomTextFeild.dart';

class WhatsInMind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/106780596_3165232310179441_1777139406711424201_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=A25cdIAMNf0AX_MzxP2&_nc_ht=scontent.fktm8-1.fna&_nc_tp=27&oh=2c8125319f4db4445826aced10a0c4e8&oe=5FA564E8')),

//            Container(
//                width: 60.0,
//                height: 60.0,
//                decoration: new BoxDecoration(
//                    shape: BoxShape.circle,
//                    image: new DecorationImage(
//                        fit: BoxFit.fill,
//                        image: new c)))
            ),
            Expanded(
                flex: 4,
                child: MyTextFormField(
                  hintText: 'Whats in Your Mind',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Enter your last name';
                    }
                    return null;
                  },
                  onSaved: (String value) {},
                )),
          ],
        ),
        Divider(
          color: Color(0xffd4d4d4),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.videocam,
                    color: Color(0xfff93f3b),
                  ),
                  Text(
                    'Live',
                    style: (TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.photo_library,
                    color: Color(0xff86b44f),
                  ),
                  Text(
                    'Photo',
                    style: (TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.video_call,
                    color: Color(0xff8e5eef),
                  ),
                  Text(
                    'Room',
                    style: (TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
