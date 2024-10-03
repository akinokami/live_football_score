class TeamModel {
  String? name;
  String? id;
  int? gender;
  List<Stages>? stages;
  List<Participants>? participants;
  List<Results>? results;
  List<Fixtures>? fixtures;
  Epstats? epstats;

  TeamModel(
      {this.name,
      this.id,
      this.gender,
      this.stages,
      this.participants,
      this.results,
      this.fixtures,
      this.epstats});

  TeamModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    gender = json['gender'];
    if (json['stages'] != null) {
      stages = <Stages>[];
      json['stages'].forEach((v) {
        stages!.add(Stages.fromJson(v));
      });
    }
    if (json['participants'] != null) {
      participants = <Participants>[];
      json['participants'].forEach((v) {
        participants!.add(Participants.fromJson(v));
      });
    }
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    if (json['fixtures'] != null) {
      fixtures = <Fixtures>[];
      json['fixtures'].forEach((v) {
        fixtures!.add(Fixtures.fromJson(v));
      });
    }
    epstats =
        json['epstats'] != null ? Epstats.fromJson(json['epstats']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['gender'] = gender;
    if (stages != null) {
      data['stages'] = stages!.map((v) => v.toJson()).toList();
    }
    if (participants != null) {
      data['participants'] = participants!.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    if (fixtures != null) {
      data['fixtures'] = fixtures!.map((v) => v.toJson()).toList();
    }
    if (epstats != null) {
      data['epstats'] = epstats!.toJson();
    }
    return data;
  }
}

class Stages {
  String? cId;
  String? cName;
  String? cFlag;
  String? stId;
  String? stName;
  int? stGender;
  int? start;
  int? end;
  int? pid;
  int? sId;
  CupInfo? cupInfo;
  Standing? standing;
  List<String>? forms;

  Stages(
      {this.cId,
      this.cName,
      this.cFlag,
      this.stId,
      this.stName,
      this.stGender,
      this.start,
      this.end,
      this.pid,
      this.sId,
      this.cupInfo,
      this.standing,
      this.forms});

  Stages.fromJson(Map<String, dynamic> json) {
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
    start = json['start'];
    end = json['end'];
    pid = json['pid'];
    sId = json['s_id'];
    cupInfo =
        json['cupInfo'] != null ? CupInfo.fromJson(json['cupInfo']) : null;
    standing =
        json['standing'] != null ? Standing.fromJson(json['standing']) : null;
    forms = json['forms'] != null ? json['forms'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
    data['start'] = start;
    data['end'] = end;
    data['pid'] = pid;
    data['s_id'] = sId;
    if (cupInfo != null) {
      data['cupInfo'] = cupInfo!.toJson();
    }
    if (standing != null) {
      data['standing'] = standing!.toJson();
    }
    data['forms'] = forms;
    return data;
  }
}

class CupInfo {
  int? isCupInfoAvailable;
  int? isCup;

  CupInfo({this.isCupInfoAvailable, this.isCup});

  CupInfo.fromJson(Map<String, dynamic> json) {
    isCupInfoAvailable = json['isCupInfoAvailable'];
    isCup = json['isCup'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isCupInfoAvailable'] = isCupInfoAvailable;
    data['isCup'] = isCup;
    return data;
  }
}

class Standing {
  int? ranking;
  String? teamId;
  String? teamName;
  String? played;
  String? wins;
  String? draws;
  String? loss;
  String? goalFor;
  String? goalAgainst;
  String? goalDifference;
  String? points;

  Standing(
      {this.ranking,
      this.teamId,
      this.teamName,
      this.played,
      this.wins,
      this.draws,
      this.loss,
      this.goalFor,
      this.goalAgainst,
      this.goalDifference,
      this.points});

  Standing.fromJson(Map<String, dynamic> json) {
    ranking = json['ranking'];
    teamId = json['team_id'];
    teamName = json['team_name'];
    played = json['played'];
    wins = json['wins'];
    draws = json['draws'];
    loss = json['loss'];
    goalFor = json['goal_for'];
    goalAgainst = json['goal_against'];
    goalDifference = json['goal_difference'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ranking'] = ranking;
    data['team_id'] = teamId;
    data['team_name'] = teamName;
    data['played'] = played;
    data['wins'] = wins;
    data['draws'] = draws;
    data['loss'] = loss;
    data['goal_for'] = goalFor;
    data['goal_against'] = goalAgainst;
    data['goal_difference'] = goalDifference;
    data['points'] = points;
    return data;
  }
}

class Participants {
  String? id;
  String? name;
  int? gender;
  String? cid;
  String? cname;
  String? cflag;
  int? pos;
  int? idx;
  int? kn;
  int? ptrn;
  String? sNumber;

  Participants(
      {this.id,
      this.name,
      this.gender,
      this.cid,
      this.cname,
      this.cflag,
      this.pos,
      this.idx,
      this.kn,
      this.ptrn,
      this.sNumber});

  Participants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    pos = json['pos'];
    idx = json['idx'];
    kn = json['kn'];
    ptrn = json['ptrn'];
    sNumber = json['s_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['cid'] = cid;
    data['cname'] = cname;
    data['cflag'] = cflag;
    data['pos'] = pos;
    data['idx'] = idx;
    data['kn'] = kn;
    data['ptrn'] = ptrn;
    data['s_number'] = sNumber;
    return data;
  }
}

class Results {
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
  List<Notes>? notes;
  Highlights? highlights;
  List<int>? penScore;
  List<int>? oScore;

  Results(
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
      this.notes,
      this.highlights,
      this.penScore,
      this.oScore});

  Results.fromJson(Map<String, dynamic> json) {
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
    if (json['notes'] != null) {
      notes = <Notes>[];
      json['notes'].forEach((v) {
        notes!.add(Notes.fromJson(v));
      });
    }
    highlights = json['highlights'] != null
        ? Highlights.fromJson(json['highlights'])
        : null;
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
    if (notes != null) {
      data['notes'] = notes!.map((v) => v.toJson()).toList();
    }
    if (highlights != null) {
      data['highlights'] = highlights!.toJson();
    }
    data['pen_score'] = penScore;
    data['o_score'] = oScore;
    return data;
  }
}

class Teams {
  String? id;
  String? name;
  int? pos;

  Teams({this.id, this.name, this.pos});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pos = json['pos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['pos'] = pos;
    return data;
  }
}

class Notes {
  String? text;

  Notes({this.text});

  Notes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    return data;
  }
}

class Highlights {
  String? url;
  String? id;
  String? externalId;

  Highlights({this.url, this.id, this.externalId});

  Highlights.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    id = json['id'];
    externalId = json['externalId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['id'] = id;
    data['externalId'] = externalId;
    return data;
  }
}

class Fixtures {
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
  List<int>? score;
  int? highlighted;
  //Odds? odds;

  Fixtures({
    this.sId,
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
    this.score,
    this.highlighted,
    //this.odds
  });

  Fixtures.fromJson(Map<String, dynamic> json) {
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
    score = json['score'] != null ? json['score'].cast<int>() : [];
    highlighted = json['highlighted'];
    // odds = json['odds'] != null ? new Odds.fromJson(json['odds']) : null;
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
    data['score'] = score;
    data['highlighted'] = highlighted;
    // if (this.odds != null) {
    //   data['odds'] = this.odds!.toJson();
    // }
    return data;
  }
}

// class Odds {
//   Category? category;
//   Bookmaker? bookmaker;
//   List<Null>? columns;
//   List<Values>? values;

//   Odds({this.category, this.bookmaker, this.columns, this.values});

//   Odds.fromJson(Map<String, dynamic> json) {
//     category = json['category'] != null
//         ? new Category.fromJson(json['category'])
//         : null;
//     bookmaker = json['bookmaker'] != null
//         ? new Bookmaker.fromJson(json['bookmaker'])
//         : null;
//     if (json['columns'] != null) {
//       columns = <Null>[];
//       json['columns'].forEach((v) {
//         columns!.add(new Null.fromJson(v));
//       });
//     }
//     if (json['values'] != null) {
//       values = <Values>[];
//       json['values'].forEach((v) {
//         values!.add(new Values.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.category != null) {
//       data['category'] = this.category!.toJson();
//     }
//     if (this.bookmaker != null) {
//       data['bookmaker'] = this.bookmaker!.toJson();
//     }
//     if (this.columns != null) {
//       data['columns'] = this.columns!.map((v) => v.toJson()).toList();
//     }
//     if (this.values != null) {
//       data['values'] = this.values!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

class Category {
  String? identifier;
  String? title;

  Category({this.identifier, this.title});

  Category.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['identifier'] = identifier;
    data['title'] = title;
    return data;
  }
}

class Bookmaker {
  String? identifier;
  String? title;
  String? logo;
  String? homepageUrl;

  Bookmaker({this.identifier, this.title, this.logo, this.homepageUrl});

  Bookmaker.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
    title = json['title'];
    logo = json['logo'];
    homepageUrl = json['homepage_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['identifier'] = identifier;
    data['title'] = title;
    data['logo'] = logo;
    data['homepage_url'] = homepageUrl;
    return data;
  }
}

class Values {
  String? valueTitle;
  Outcome? outcome;
  String? marketTitle;
  String? valueId;
  int? providerId;
  List<Links>? links;
  String? priceDec;
  String? priceFract;
  String? priceAm;
  int? direction;
  int? priceLastChanged;
  bool? offered;
  bool? placeholder;
  PriceBet? priceBet;
  String? priceLastChangedDEBUG;

  Values(
      {this.valueTitle,
      this.outcome,
      this.marketTitle,
      this.valueId,
      this.providerId,
      this.links,
      this.priceDec,
      this.priceFract,
      this.priceAm,
      this.direction,
      this.priceLastChanged,
      this.offered,
      this.placeholder,
      this.priceBet,
      this.priceLastChangedDEBUG});

  Values.fromJson(Map<String, dynamic> json) {
    valueTitle = json['valueTitle'];
    outcome =
        json['outcome'] != null ? Outcome.fromJson(json['outcome']) : null;
    marketTitle = json['marketTitle'];
    valueId = json['valueId'];
    providerId = json['providerId'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    priceDec = json['priceDec'];
    priceFract = json['priceFract'];
    priceAm = json['priceAm'];
    direction = json['direction'];
    priceLastChanged = json['priceLastChanged'];
    offered = json['offered'];
    placeholder = json['placeholder'];
    priceBet =
        json['priceBet'] != null ? PriceBet.fromJson(json['priceBet']) : null;
    priceLastChangedDEBUG = json['priceLastChanged_DEBUG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['valueTitle'] = valueTitle;
    if (outcome != null) {
      data['outcome'] = outcome!.toJson();
    }
    data['marketTitle'] = marketTitle;
    data['valueId'] = valueId;
    data['providerId'] = providerId;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['priceDec'] = priceDec;
    data['priceFract'] = priceFract;
    data['priceAm'] = priceAm;
    data['direction'] = direction;
    data['priceLastChanged'] = priceLastChanged;
    data['offered'] = offered;
    data['placeholder'] = placeholder;
    if (priceBet != null) {
      data['priceBet'] = priceBet!.toJson();
    }
    data['priceLastChanged_DEBUG'] = priceLastChangedDEBUG;
    return data;
  }
}

class Outcome {
  String? identifier;

  Outcome({this.identifier});

  Outcome.fromJson(Map<String, dynamic> json) {
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['identifier'] = identifier;
    return data;
  }
}

class Links {
  String? url;

  Links({this.url});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class PriceBet {
  String? priceBet;
  String? priceWin;
  String? currencySymbol;

  PriceBet({this.priceBet, this.priceWin, this.currencySymbol});

  PriceBet.fromJson(Map<String, dynamic> json) {
    priceBet = json['priceBet'];
    priceWin = json['priceWin'];
    currencySymbol = json['currencySymbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['priceBet'] = priceBet;
    data['priceWin'] = priceWin;
    data['currencySymbol'] = currencySymbol;
    return data;
  }
}

class Epstats {
  List<EpStages>? stages;

  Epstats({this.stages});

  Epstats.fromJson(Map<String, dynamic> json) {
    if (json['stages'] != null) {
      stages = <EpStages>[];
      json['stages'].forEach((v) {
        stages!.add(EpStages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (stages != null) {
      data['stages'] = stages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EpStages {
  String? stId;
  String? stName;
  List<Pstats>? pstats;

  EpStages({this.stId, this.stName, this.pstats});

  EpStages.fromJson(Map<String, dynamic> json) {
    stId = json['st_id'];
    stName = json['st_name'];
    if (json['pstats'] != null) {
      pstats = <Pstats>[];
      json['pstats'].forEach((v) {
        pstats!.add(Pstats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['st_id'] = stId;
    data['st_name'] = stName;
    if (pstats != null) {
      data['pstats'] = pstats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pstats {
  String? name;
  List<Stats>? stats;

  Pstats({this.name, this.stats});

  Pstats.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stats {
  Participant? participant;
  Participant? team;
  int? ranking;
  String? stat;

  Stats({this.participant, this.team, this.ranking, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    participant = json['participant'] != null
        ? Participant.fromJson(json['participant'])
        : null;
    team = json['team'] != null ? Participant.fromJson(json['team']) : null;
    ranking = json['ranking'];
    stat = json['stat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (participant != null) {
      data['participant'] = participant!.toJson();
    }
    if (team != null) {
      data['team'] = team!.toJson();
    }
    data['ranking'] = ranking;
    data['stat'] = stat;
    return data;
  }
}

class Participant {
  String? id;
  String? name;

  Participant({this.id, this.name});

  Participant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
