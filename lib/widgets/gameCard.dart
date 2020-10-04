import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/match.dart';

class GameCard extends StatelessWidget {
  Games games;

  GameCard({this.games});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.brightness_1,
                  color: games.matchStarted ? Colors.green : Colors.red,
                )),
            Text(
              games.team1,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text('VS',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.green)),
            ),
            Text(games.team2,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800)),
            games.winnerTeam != null
                ? Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(games.winnerTeam + 'won the match'),
                    ))
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
