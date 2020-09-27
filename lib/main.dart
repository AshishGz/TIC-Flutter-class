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
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/image.png'),
              ),
              actions: <Widget>[
                Icon(Icons.more_vert),
              ],
            ),
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
