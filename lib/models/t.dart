class T {
  String? id;
  int? ranking;
  String? goals;
  String? penalties;
  String? participantName;
  Team? team;

  T(
      {this.id,
      this.ranking,
      this.goals,
      this.penalties,
      this.participantName,
      this.team});

  T.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ranking = json['ranking'];
    goals = json['goals'];
    penalties = json['penalties'];
    participantName = json['participant_name'];
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ranking'] = ranking;
    data['goals'] = goals;
    data['penalties'] = penalties;
    data['participant_name'] = participantName;
    if (team != null) {
      data['team'] = team!.toJson();
    }
    return data;
  }
}

class Team {
  String? name;
  String? id;

  Team({this.name, this.id});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
