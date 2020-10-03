import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  List<String> month = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dev'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  DateTime.now().year.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  month[DateTime.now().month - 1],
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  DateTime.now().day.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  DateTime.now().hour.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  DateTime.now().minute.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
            Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey.shade400,
                child: Text(
                  DateTime.now().second.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )),
          ],
        ),
      ],
    );
  }
}
//fromVideoList(String jsons) {
//  var json = jsonDecode(jsons);
//  List<Video> list = new List<Video>();
//  json['videos'].forEach((v) {
//    list.add(new Video.fromJson(v));
//  });
//  return list;
//}
