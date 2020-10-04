import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/playerStat.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class PlayersUI extends StatefulWidget {
  int playerId;

  PlayersUI({this.playerId});

  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<PlayersUI> {
  PlayerStat playerStat;
  bool isLoading = true;
  getPlayer() async {
    try {
      var url =
          'https://cricapi.com/api/playerStats?apikey=QJMPy9N0pgcBOFLqXMLfzLKNjfp1&pid=${widget.playerId}';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        playerStat = PlayerStat.fromJson(jsonResponse);
        isLoading = false;
        setState(() {});
        log('Player Received');
      } else {
        print('Request failed with status:');
      }
    } catch (e) {
      log(e);
    }
  }

  @override
  void initState() {
    getPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Players'),
        ),
        body: ListView(
          children: <Widget>[
            Text(playerStat.name),
            Image.network(playerStat.imageURL),
            Text(playerStat.country),
            Text(playerStat.battingStyle),
            Text(playerStat.bowlingStyle),
            Text(playerStat.born),
            Text(playerStat.profile),
          ],
        ));
  }
}
