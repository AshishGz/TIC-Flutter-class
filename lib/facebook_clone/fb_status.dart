import 'package:flutter/material.dart';

class FbStatus extends StatelessWidget {
  bool showSingleImage;
  bool showDoubleImage;

  FbStatus({this.showSingleImage = false, this.showDoubleImage = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/c0.0.100.100a/p100x100/106780596_3165232310179441_1777139406711424201_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=A25cdIAMNf0AX_MzxP2&_nc_ht=scontent.fktm8-1.fna&_nc_tp=27&oh=2c8125319f4db4445826aced10a0c4e8&oe=5FA564E8',
                      //width: MediaQuery.of(context).size.width / 3,
                    ),
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: 'Ashish Gautam ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'is with',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                        TextSpan(text: ' Ram'),
                      ],
                    ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Text('27m . '),
                      Icon(
                        Icons.people,
                        color: Colors.grey.shade900,
                      )
                    ],
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 8),
                  child: Text(
                    'I am felling happy today in flutter class. hahaha ahahha',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                showSingleImage
                    ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.network(
                            'https://img.jakpost.net/c/2019/09/03/2019_09_03_78912_1567484272._large.jpg'),
                      )
                    : SizedBox.shrink(),
                showDoubleImage
                    ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Image.network(
                                  'https://www.onlinekhabar.com/wp-content/uploads/2019/10/Fulpati-2076-2-300x183.jpg'),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Image.network(
                                    'https://www.onlinekhabar.com/wp-content/uploads/2019/10/Fulpati-2076-2-300x183.jpg'),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Like'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.comment),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Comment'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.share),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Share'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            ),
          ],
        ),
      ],
    );
  }
}
