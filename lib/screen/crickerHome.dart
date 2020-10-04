import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/match.dart';
import 'package:flutter_class_TIC/screen/teamInfo.dart';
import 'package:flutter_class_TIC/widgets/gameCard.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class CricketHome extends StatefulWidget {
  @override
  _CricketHomeState createState() => _CricketHomeState();
}

class _CricketHomeState extends State<CricketHome> {
  List<Games> game = new List();
  bool isLoading = true;

  getNewsData() async {
    try {
      var url =
          'https://cricapi.com/api/matches?apikey=QJMPy9N0pgcBOFLqXMLfzLKNjfp1';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['matches'].forEach((v) {
          game.add(Games.fromJson(v));
        });
        isLoading = false;
        setState(() {});
        log('Macthes Received');
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
          title: Text('Cricket API'),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: game.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14.0, top: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return TeamInfo(
                                gameId: game[index].uniqueId,
                              );
                            },
                          ));
                        },
                        child: GameCard(
                          games: game[index],
                        )),
                  );
                },
              ));
  }
}
