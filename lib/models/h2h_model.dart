class H2HModel {
  List<Teams>? teams;
  H2h? h2h;

  H2HModel({this.teams, this.h2h});

  H2HModel.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
    h2h = json['h2h'] != null ? H2h.fromJson(json['h2h']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    if (h2h != null) {
      data['h2h'] = h2h!.toJson();
    }
    return data;
  }
}

class Teams {
  String? id;
  String? name;
  int? pos;
  List<Matches>? matches;

  Teams({this.id, this.name, this.pos, this.matches});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pos = json['pos'];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['pos'] = pos;
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  int? sId;
  int? pid;
  String? id;
  String? cId;
  String? cName;
  String? stId;
  String? stName;
  int? gid;
  String? season;
  List<Teams>? teams;
  int? start;
  int? aStart;
  int? status;
  int? oStatus;
  int? win;
  List<int>? score;
  int? highlighted;
  List<int>? penScore;
  List<int>? oScore;

  Matches(
      {this.sId,
      this.pid,
      this.id,
      this.cId,
      this.cName,
      this.stId,
      this.stName,
      this.gid,
      this.season,
      this.teams,
      this.start,
      this.aStart,
      this.status,
      this.oStatus,
      this.win,
      this.score,
      this.highlighted,
      this.penScore,
      this.oScore});

  Matches.fromJson(Map<String, dynamic> json) {
    sId = json['s_id'];
    pid = json['pid'];
    id = json['id'];
    cId = json['c_id'];
    cName = json['c_name'];
    stId = json['st_id'];
    stName = json['st_name'];
    gid = json['gid'];
    season = json['season'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
    start = json['start'];
    aStart = json['a_start'];
    status = json['status'];
    oStatus = json['o_status'];
    win = json['win'];
    score = json['score'] != null ? json['score'].cast<int>() : [];
    highlighted = json['highlighted'];
    penScore = json['pen_score'] != null ? json['pen_score'].cast<int>() : [];
    oScore = json['o_score'] != null ? json['o_score'].cast<int>() : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['s_id'] = sId;
    data['pid'] = pid;
    data['id'] = id;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['gid'] = gid;
    data['season'] = season;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    data['start'] = start;
    data['a_start'] = aStart;
    data['status'] = status;
    data['o_status'] = oStatus;
    data['win'] = win;
    data['score'] = score;
    data['highlighted'] = highlighted;
    data['pen_score'] = penScore;
    data['o_score'] = oScore;
    return data;
  }
}

class H2h {
  List<Matches>? matches;

  H2h({this.matches});

  H2h.fromJson(Map<String, dynamic> json) {
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
