import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_class_TIC/model/squad.dart';
import 'package:flutter_class_TIC/screen/players.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TeamInfo extends StatefulWidget {
  int gameId;
  TeamInfo({this.gameId});
  @override
  _TeamInfoState createState() => _TeamInfoState();
}

class _TeamInfoState extends State<TeamInfo> {
  List<Squad> squad = new List();
  bool isLoading = true;
  getNewsData() async {
    log(widget.gameId.toString());
    try {
      var url =
          'https://cricapi.com/api/fantasySquad?apikey=QJMPy9N0pgcBOFLqXMLfzLKNjfp1&unique_id=${widget.gameId}';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['squad'].forEach((v) {
          squad.add(Squad.fromJson(v));
        });
        isLoading = false;
        setState(() {});
        log('Squad Received');
      } else {
        print('Request failed with status:');
      }
    } catch (e) {
      log(e);
    }
  }

  @override
  void initState() {
    getNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cricket'),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Row(
                children: <Widget>[
                  Container(
                    child: Expanded(
                        child: Container(
                      color: Colors.amber.shade200,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: squad[0].players.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: <Widget>[
                              index == 0
                                  ? Text(
                                      squad[0].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : SizedBox.shrink(),
                              index == 0 ? Divider() : SizedBox.shrink(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 14.0, top: 10),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                          return PlayersUI(
                                            playerId:
                                                squad[0].players[index].pid,
                                          );
                                        },
                                      ));
                                    },
                                    child: Text(
                                        squad[0].players[index].name != ''
                                            ? squad[0].players[index].name
                                            : '')),
                              ),
                            ],
                          );
                        },
                      ),
                    )),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.greenAccent.shade200,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: squad[1].players.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            index == 0
                                ? Text(
                                    squad[1].name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                : SizedBox.shrink(),
                            index == 0 ? Divider() : SizedBox.shrink(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 14.0, top: 10),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return PlayersUI(
                                          playerId: squad[1].players[index].pid,
                                        );
                                      },
                                    ));
                                  },
                                  child: Text(squad[1].players[index].name != ''
                                      ? squad[1].players[index].name
                                      : '')),
                            ),
                          ],
                        );
                      },
                    ),
                  )),
                ],
              ));
  }
}
