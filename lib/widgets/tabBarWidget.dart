import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            isScrollable: true,
            //controller: TabController(initialIndex: 2),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                child: Text('one one one'),
              ),
              Tab(
                child: Text('one two one two one two '),
              ),
              Tab(
                child: Text('Three Three Three'),
              ),
              Tab(
                child: Text('Four'),
              ),
              Tab(
                child: Text('Five'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.dashboard),
            Icon(Icons.dashboard),
          ],
        ),
      ),
    );
  }
}
