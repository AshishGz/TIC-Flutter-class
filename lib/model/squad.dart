class Squad {
  String _name;
  List<Players> _players;

  Squad({String name, List<Players> players}) {
    this._name = name;
    this._players = players;
  }

  String get name => _name;
  set name(String name) => _name = name;
  List<Players> get players => _players;
  set players(List<Players> players) => _players = players;

  Squad.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    if (json['players'] != null) {
      _players = new List<Players>();
      json['players'].forEach((v) {
        _players.add(new Players.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    if (this._players != null) {
      data['players'] = this._players.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Players {
  int _pid;
  String _name;

  Players({int pid, String name}) {
    this._pid = pid;
    this._name = name;
  }

  int get pid => _pid;
  set pid(int pid) => _pid = pid;
  String get name => _name;
  set name(String name) => _name = name;

  Players.fromJson(Map<String, dynamic> json) {
    _pid = json['pid'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this._pid;
    data['name'] = this._name;
    return data;
  }
}
