class Event {
  int? min;
  String? id;
  int? pos;
  String? plId;
  int? plNum;
  String? plName;
  String? plSName;
  int? plNumO;
  int? type;
  List<int>? score;
  List<Assists>? assists;

  Event(
      {this.min,
      this.id,
      this.pos,
      this.plId,
      this.plNum,
      this.plName,
      this.plSName,
      this.plNumO,
      this.type,
      this.score,
      this.assists});

  Event.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    id = json['id'];
    pos = json['pos'];
    plId = json['pl_id'];
    plNum = json['pl_num'];
    plName = json['pl_name'];
    plSName = json['pl_s_name'];
    plNumO = json['pl_num_o'];
    type = json['type'];
    score = json['score'].cast<int>();
    if (json['assists'] != null) {
      assists = <Assists>[];
      json['assists'].forEach((v) {
        assists!.add(Assists.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min'] = min;
    data['id'] = id;
    data['pos'] = pos;
    data['pl_id'] = plId;
    data['pl_num'] = plNum;
    data['pl_name'] = plName;
    data['pl_s_name'] = plSName;
    data['pl_num_o'] = plNumO;
    data['type'] = type;
    data['score'] = score;
    if (assists != null) {
      data['assists'] = assists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Assists {
  String? id;
  String? plName;

  Assists({this.id, this.plName});

  Assists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    plName = json['pl_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['pl_name'] = plName;
    return data;
  }
}
