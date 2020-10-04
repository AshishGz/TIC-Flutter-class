import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/widgets/IconImageWidget.dart';
import 'package:flutter_class_TIC/widgets/asscetImagewidget.dart';
import 'package:flutter_class_TIC/widgets/buttonWidget.dart';
import 'package:flutter_class_TIC/widgets/containerWidget.dart';
import 'package:flutter_class_TIC/widgets/form/myForm.dart';
import 'package:flutter_class_TIC/widgets/listTileWidget.dart';
import 'package:flutter_class_TIC/widgets/listViewWidget.dart';
import 'package:flutter_class_TIC/widgets/networkImageWidget.dart';
import 'package:flutter_class_TIC/widgets/rowWidget.dart';
import 'package:flutter_class_TIC/widgets/stackWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff000000),
        dividerColor: Colors.grey,
        brightness: Brightness.dark,
        primaryColor: Colors.black54,
        accentColor: Color(0xffed1c23),
      ),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlutterClass(),
    );
  }
}

class FlutterClass extends StatefulWidget {
  @override
  _FlutterClassState createState() => _FlutterClassState();
}

class _FlutterClassState extends State<FlutterClass> {
  @override
  void initState() {
    // generateWordPairs().take(1).forEach(print);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
            appBar: AppBar(
              title: Text('My Flutter App'),
              actions: <Widget>[
                Icon(Icons.more_vert),
              ],
            ),
            drawer: Drawer(
                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                  },
                ),
              ],
            )),
            body: ListTileWidget()
//            SingleChildScrollView(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              RowWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ContainerWidget(),
//              ButtonWidget(),
//              ButtonWidget(),
//              ButtonWidget(),
//              ButtonWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//              NetworkImageWidget(),
//            ],
//          ),
//        )
//            Container(
//                child: Text.rich(
//          TextSpan(
//            text: 'Hello',
//            style: TextStyle(fontSize: 30), // default text style
//            children: <TextSpan>[
//              TextSpan(
//                  text: ' beautiful ',
//                  style: TextStyle(
//                      fontStyle: FontStyle.italic, color: Colors.orange)),
//              TextSpan(
//                  text: 'world',
//                  style: TextStyle(
//                      fontWeight: FontWeight.bold, color: Colors.green)),
//            ],
//          ),
//        )
//
////                Text(
////          'Hello This is me Hello This is me v v vHello This is meHello This is meHello This is meHello This is meHello This is meHello This is me Hello This is me v Hello This is me v',
////          maxLines: 3,
////          textAlign: TextAlign.right,
////          style: TextStyle(
////              fontSize: 22.0,
////              fontWeight: FontWeight.bold,
////              fontStyle: FontStyle.italic,
////              color: Colors.orange.shade900),
////        )
//                )
            ));
  }
}
