import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FbStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> story = new List();
    for (int i = 1; i < 20; i++) {
      story.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-0/p640x640/121195395_1303256193353403_971541461488141917_o.jpg?_nc_cat=105&_nc_sid=365331&_nc_ohc=KFf6ktLA9JsAX_3AtgQ&_nc_ht=scontent.fktm8-1.fna&tp=6&oh=24bb49083bc0697169be69ff707c3a61&oe=5FA98087',
                width: MediaQuery.of(context).size.width / 4,
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xff1a76ef),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/106780596_3165232310179441_1777139406711424201_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=A25cdIAMNf0AX_MzxP2&_nc_ht=scontent.fktm8-1.fna&_nc_tp=27&oh=2c8125319f4db4445826aced10a0c4e8&oe=5FA564E8',
                    ),
                  ),
                )),
            Positioned(
                bottom: 10,
                left: 2,
                child: Text(
                  'Ashish Gautam',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(
                  //\ shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                //\\color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      child: Image.network(
                        'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/106780596_3165232310179441_1777139406711424201_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=A25cdIAMNf0AX_MzxP2&_nc_ht=scontent.fktm8-1.fna&_nc_tp=27&oh=2c8125319f4db4445826aced10a0c4e8&oe=5FA564E8',
                        //width: MediaQuery.of(context).size.width / 3,
                      ),
                    ),
                    Positioned(
                        top: 70,
                        left: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                            color: Color(0xff1a76ef),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          ),
                        )),
                    Positioned(
                        bottom: 10,
                        left: 4,
                        child: Text(
                          'Create Story',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ))
                  ],
                ),
              ),
            ),
            ...story
          ],
        ),
      ),
    );
  }
}
