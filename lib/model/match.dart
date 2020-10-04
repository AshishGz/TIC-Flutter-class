class Games {
  int _uniqueId;
  String _date;
  String _dateTimeGMT;
  String _team1;
  String _team2;
  String _type;
  bool _squad;
  String _tossWinnerTeam;
  String _winnerTeam;
  bool _matchStarted;

  Games(
      {int uniqueId,
      String date,
      String dateTimeGMT,
      String team1,
      String team2,
      String type,
      bool squad,
      String tossWinnerTeam,
      String winnerTeam,
      bool matchStarted}) {
    this._uniqueId = uniqueId;
    this._date = date;
    this._dateTimeGMT = dateTimeGMT;
    this._team1 = team1;
    this._team2 = team2;
    this._type = type;
    this._squad = squad;
    this._tossWinnerTeam = tossWinnerTeam;
    this._winnerTeam = winnerTeam;
    this._matchStarted = matchStarted;
  }

  int get uniqueId => _uniqueId;
  set uniqueId(int uniqueId) => _uniqueId = uniqueId;
  String get date => _date;
  set date(String date) => _date = date;
  String get dateTimeGMT => _dateTimeGMT;
  set dateTimeGMT(String dateTimeGMT) => _dateTimeGMT = dateTimeGMT;
  String get team1 => _team1;
  set team1(String team1) => _team1 = team1;
  String get team2 => _team2;
  set team2(String team2) => _team2 = team2;
  String get type => _type;
  set type(String type) => _type = type;
  bool get squad => _squad;
  set squad(bool squad) => _squad = squad;
  String get tossWinnerTeam => _tossWinnerTeam;
  set tossWinnerTeam(String tossWinnerTeam) => _tossWinnerTeam = tossWinnerTeam;
  String get winnerTeam => _winnerTeam;
  set winnerTeam(String winnerTeam) => _winnerTeam = winnerTeam;
  bool get matchStarted => _matchStarted;
  set matchStarted(bool matchStarted) => _matchStarted = matchStarted;

  Games.fromJson(Map<String, dynamic> json) {
    _uniqueId = json['unique_id'];
    _date = json['date'];
    _dateTimeGMT = json['dateTimeGMT'];
    _team1 = json['team-1'];
    _team2 = json['team-2'];
    _type = json['type'];
    _squad = json['squad'];
    _tossWinnerTeam = json['toss_winner_team'];
    _winnerTeam = json['winner_team'];
    _matchStarted = json['matchStarted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unique_id'] = this._uniqueId;
    data['date'] = this._date;
    data['dateTimeGMT'] = this._dateTimeGMT;
    data['team-1'] = this._team1;
    data['team-2'] = this._team2;
    data['type'] = this._type;
    data['squad'] = this._squad;
    data['toss_winner_team'] = this._tossWinnerTeam;
    data['winner_team'] = this._winnerTeam;
    data['matchStarted'] = this._matchStarted;
    return data;
  }
}
