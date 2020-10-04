import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/screen/crickerHome.dart';
import 'package:flutter_class_TIC/screen/news-screen.dart';
import 'package:flutter_class_TIC/widgets/bottomNavigationWidget.dart';
import 'package:flutter_class_TIC/widgets/tabBarWidget.dart';

import 'buttonWidget.dart';

class ListTileWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(child: ListTile(title: Text('One-line ListTile'))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return BottomNaviagtionWidhet();
              },
            ));

            //scaffoldKey.currentState.showSnackBar(snackBar);
          },
          child: Card(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Bottom Naviagtion'),
              ),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return CricketHome();
              },
            ));
          },
          child: Card(
            child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Cricket API'),
                subtitle: Text('Here is a second line'),
                trailing: RaisedButton(
                  child: Text('dsa'),
                )),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return NewsScreen();
              },
            ));
          },
          child: Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Nes Screen'),
              subtitle:
                  Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.access_alarm),
              isThreeLine: true,
            ),
          ),
        ),
      ],
    );
  }
}
