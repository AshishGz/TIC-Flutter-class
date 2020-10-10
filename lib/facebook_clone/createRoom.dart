import 'package:flutter/material.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _rooms = new List();
    for (int i = 0; i <= 20; i++) {
      _rooms.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/106780596_3165232310179441_1777139406711424201_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=A25cdIAMNf0AX_MzxP2&_nc_ht=scontent.fktm8-1.fna&_nc_tp=27&oh=2c8125319f4db4445826aced10a0c4e8&oe=5FA564E8')),
            Positioned(
                top: 50,
                bottom: 0,
                left: 50,
                right: 0,
                child: Container(
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Icon(
                      Icons.brightness_1,
                      color: Colors.green,
                    ),
                  ),
                )),
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              width: 120,
              height: 60,
              child: OutlineButton.icon(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.orange,
                  ),
                  label: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Create',
                        style: TextStyle(color: Color(0xff1a76ef)),
                      ),
                      Text(
                        'room',
                        style: TextStyle(color: Color(0xff1a76ef)),
                      ),
                    ],
                  )),
            ),
            ..._rooms
          ],
        ),
      ),
    );
  }
}
