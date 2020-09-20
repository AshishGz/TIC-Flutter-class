import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];
    final List<int> colorCodes = <int>[600, 500, 100, 800, 200];

//    FixedExtentScrollController fixedExtentScrollController =
//        new FixedExtentScrollController();
//    return ListWheelScrollView(
//        controller: fixedExtentScrollController,
//        physics: FixedExtentScrollPhysics(),
//        children: entries.map((month) {
//          return Card(
//              child: Row(
//            children: <Widget>[
//              Expanded(
//                  child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Text(
//                  month,
//                  style: TextStyle(fontSize: 18.0),
//                ),
//              )),
//            ],
//          ));
//        }).toList(),
//        itemExtent: 60.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.green,
        ),
      ),
    );

//    return ListView.builder(
//        padding: const EdgeInsets.all(8),
//        itemCount: entries.length,
//        itemBuilder: (BuildContext context, int index) {
//          return Container(
//            height: 50,
//            color: Colors.amber[colorCodes[index]],
//            child: Center(child: Text('Entry ${entries[index]}')),
//          );
//        });

//    return ListView(
//      // physics: ScrollPhysics(),
//      padding: const EdgeInsets.all(8),
//      children: <Widget>[
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//      ],
//    );
  }
}
