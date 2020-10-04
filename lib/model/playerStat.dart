class PlayerStat {
  int _pid;
  String _profile;
  String _imageURL;
  String _battingStyle;
  String _bowlingStyle;
  String _majorTeams;
  String _currentAge;
  String _born;
  String _fullName;
  String _name;
  String _country;
  String _playingRole;

  PlayerStat(
      {int pid,
      String profile,
      String imageURL,
      String battingStyle,
      String bowlingStyle,
      String majorTeams,
      String currentAge,
      String born,
      String fullName,
      String name,
      String country,
      String playingRole}) {
    this._pid = pid;
    this._profile = profile;
    this._imageURL = imageURL;
    this._battingStyle = battingStyle;
    this._bowlingStyle = bowlingStyle;
    this._majorTeams = majorTeams;
    this._currentAge = currentAge;
    this._born = born;
    this._fullName = fullName;
    this._name = name;
    this._country = country;
    this._playingRole = playingRole;
  }

  int get pid => _pid;
  set pid(int pid) => _pid = pid;
  String get profile => _profile;
  set profile(String profile) => _profile = profile;
  String get imageURL => _imageURL;
  set imageURL(String imageURL) => _imageURL = imageURL;
  String get battingStyle => _battingStyle;
  set battingStyle(String battingStyle) => _battingStyle = battingStyle;
  String get bowlingStyle => _bowlingStyle;
  set bowlingStyle(String bowlingStyle) => _bowlingStyle = bowlingStyle;
  String get majorTeams => _majorTeams;
  set majorTeams(String majorTeams) => _majorTeams = majorTeams;
  String get currentAge => _currentAge;
  set currentAge(String currentAge) => _currentAge = currentAge;
  String get born => _born;
  set born(String born) => _born = born;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  String get name => _name;
  set name(String name) => _name = name;
  String get country => _country;
  set country(String country) => _country = country;
  String get playingRole => _playingRole;
  set playingRole(String playingRole) => _playingRole = playingRole;

  PlayerStat.fromJson(Map<String, dynamic> json) {
    _pid = json['pid'];
    _profile = json['profile'];
    _imageURL = json['imageURL'];
    _battingStyle = json['battingStyle'];
    _bowlingStyle = json['bowlingStyle'];
    _majorTeams = json['majorTeams'];
    _currentAge = json['currentAge'];
    _born = json['born'];
    _fullName = json['fullName'];
    _name = json['name'];
    _country = json['country'];
    _playingRole = json['playingRole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this._pid;
    data['profile'] = this._profile;
    data['imageURL'] = this._imageURL;
    data['battingStyle'] = this._battingStyle;
    data['bowlingStyle'] = this._bowlingStyle;
    data['majorTeams'] = this._majorTeams;
    data['currentAge'] = this._currentAge;
    data['born'] = this._born;
    data['fullName'] = this._fullName;
    data['name'] = this._name;
    data['country'] = this._country;
    data['playingRole'] = this._playingRole;
    return data;
  }
}
