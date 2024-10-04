import 'package:live_football_score/models/t.dart';
import 'package:live_football_score/models/table_model.dart';

class LeagueModel {
  String? cId;
  String? cName;
  String? cFlag;
  String? stId;
  String? stName;
  String? stCode;
  int? stGender;
  int? start;
  int? end;
  int? pid;
  int? sId;
  CupInfo? cupInfo;
  int? noTable;
  int? noScorers;
  int? noTeamStats;
  int? noTracker;
  int? noDraw;
  int? highlighted;
  List<String>? countryCodes;
  List<Matches>? matches;
  L? l;
  // List<T>? t;
  List<Estats>? estats;
  // List<Epstats>? epstats;
  List<Estats>? epstats;
  LeagueModel(
      {this.cId,
      this.cName,
      this.cFlag,
      this.stId,
      this.stName,
      this.stCode,
      this.stGender,
      this.start,
      this.end,
      this.pid,
      this.sId,
      this.cupInfo,
      this.noTable,
      this.noScorers,
      this.noTeamStats,
      this.noTracker,
      this.noDraw,
      this.highlighted,
      this.countryCodes,
      this.matches,
      this.l,
      // this.t,
      this.estats,
      this.epstats});

  LeagueModel.fromJson(Map<String, dynamic> json) {
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    stId = json['st_id'];
    stName = json['st_name'];
    stCode = json['st_code'];
    stGender = json['st_gender'];
    start = json['start'];
    end = json['end'];
    pid = json['pid'];
    sId = json['s_id'];
    cupInfo =
        json['cupInfo'] != null ? CupInfo.fromJson(json['cupInfo']) : null;
    noTable = json['noTable'];
    noScorers = json['noScorers'];
    noTeamStats = json['noTeamStats'];
    noTracker = json['noTracker'];
    noDraw = json['noDraw'];
    highlighted = json['highlighted'];
    countryCodes =
        json['countryCodes'] != null ? json['countryCodes'].cast<String>() : [];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
    l = json['L'] != null ? L.fromJson(json['L']) : null;
    // if (json['T'] != null) {
    //   t = <T>[];
    //   json['T'].forEach((v) {
    //     t!.add(T.fromJson(v));
    //   });
    // }
    if (json['estats'] != null) {
      estats = <Estats>[];
      json['estats'].forEach((v) {
        estats!.add(Estats.fromJson(v));
      });
    }
    if (json['epstats'] != null) {
      epstats = <Estats>[];
      json['epstats'].forEach((v) {
        epstats!.add(Estats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_code'] = stCode;
    data['st_gender'] = stGender;
    data['start'] = start;
    data['end'] = end;
    data['pid'] = pid;
    data['s_id'] = sId;
    if (cupInfo != null) {
      data['cupInfo'] = cupInfo!.toJson();
    }
    data['noTable'] = noTable;
    data['noScorers'] = noScorers;
    data['noTeamStats'] = noTeamStats;
    data['noTracker'] = noTracker;
    data['noDraw'] = noDraw;
    data['highlighted'] = highlighted;
    data['countryCodes'] = countryCodes;
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    if (l != null) {
      data['L'] = l!.toJson();
    }
    // if (t != null) {
    //   data['T'] = t!.map((v) => v.toJson()).toList();
    // }
    if (estats != null) {
      data['estats'] = estats!.map((v) => v.toJson()).toList();
    }
    if (epstats != null) {
      data['epstats'] = epstats!.map((v) => v.toJson()).toList();
    }
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

class Matches {
  int? pid;
  int? sId;
  String? sCode;
  String? cId;
  String? cName;
  String? cFlag;
  String? cCode;
  // LtWidgets? ltWidgets;
  String? stId;
  String? stName;
  int? stGender;
  String? stCode;
  int? format;
  String? id;
  List<Pids>? pids;
  int? ut;
  String? statusTxt;
  int? status;
  int? pStatus;
  int? oStatus;
  int? poStatus;
  int? elapsed;
  int? elapsedI;
  int? play;
  int? elapsedT;
  String? round;
  int? start;
  int? aStart;
  int? aEnd;
  int? cov;
  List<int>? score;
  List<int>? htScore;
  List<int>? ftScore;
  int? highlighted;
  int? hasPdata;
  int? canEndWithDraw;
  String? season;
  List<Teams>? teams;
  List<Notes>? notes;
  // Odds? odds;
  Highlights? highlights;

  Matches(
      {this.pid,
      this.sId,
      this.sCode,
      this.cId,
      this.cName,
      this.cFlag,
      this.cCode,
      // this.ltWidgets,
      this.stId,
      this.stName,
      this.stGender,
      this.stCode,
      this.format,
      this.id,
      this.pids,
      this.ut,
      this.statusTxt,
      this.status,
      this.pStatus,
      this.oStatus,
      this.poStatus,
      this.elapsed,
      this.elapsedI,
      this.play,
      this.elapsedT,
      this.round,
      this.start,
      this.aStart,
      this.aEnd,
      this.cov,
      this.score,
      this.htScore,
      this.ftScore,
      this.highlighted,
      this.hasPdata,
      this.canEndWithDraw,
      this.season,
      this.teams,
      this.notes,
      // this.odds,
      this.highlights});

  Matches.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    sId = json['s_id'];
    sCode = json['s_code'];
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    cCode = json['c_code'];
    // ltWidgets = json['lt_widgets'] != null
    //     ? new LtWidgets.fromJson(json['lt_widgets'])
    //     : null;
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
    stCode = json['st_code'];
    format = json['format'];
    id = json['id'];
    if (json['pids'] != null) {
      pids = <Pids>[];
      json['pids'].forEach((v) {
        pids!.add(Pids.fromJson(v));
      });
    }
    ut = json['ut'];
    statusTxt = json['status_txt'];
    status = json['status'];
    pStatus = json['p_status'];
    oStatus = json['o_status'];
    poStatus = json['po_status'];
    elapsed = json['elapsed'];
    elapsedI = json['elapsed_i'];
    play = json['play'];
    elapsedT = json['elapsed_t'];
    round = json['round'];
    start = json['start'];
    aStart = json['a_start'];
    aEnd = json['a_end'];
    cov = json['cov'];
    score = json['score'] != null ? json['score'].cast<int>() : [];
    htScore = json['ht_score'] != null ? json['ht_score'].cast<int>() : [];
    ftScore = json['ft_score'] != null ? json['ft_score'].cast<int>() : [];
    highlighted = json['highlighted'];
    hasPdata = json['has_pdata'];
    canEndWithDraw = json['can_end_with_draw'];
    season = json['season'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
    if (json['notes'] != null) {
      notes = <Notes>[];
      json['notes'].forEach((v) {
        notes!.add(Notes.fromJson(v));
      });
    }
    //  odds = json['odds'] != null ? new Odds.fromJson(json['odds']) : null;
    highlights = json['highlights'] != null
        ? Highlights.fromJson(json['highlights'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['s_id'] = sId;
    data['s_code'] = sCode;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['c_code'] = cCode;
    // if (this.ltWidgets != null) {
    //   data['lt_widgets'] = this.ltWidgets!.toJson();
    // }
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
    data['st_code'] = stCode;
    data['format'] = format;
    data['id'] = id;
    if (pids != null) {
      data['pids'] = pids!.map((v) => v.toJson()).toList();
    }
    data['ut'] = ut;
    data['status_txt'] = statusTxt;
    data['status'] = status;
    data['p_status'] = pStatus;
    data['o_status'] = oStatus;
    data['po_status'] = poStatus;
    data['elapsed'] = elapsed;
    data['elapsed_i'] = elapsedI;
    data['play'] = play;
    data['elapsed_t'] = elapsedT;
    data['round'] = round;
    data['start'] = start;
    data['a_start'] = aStart;
    data['a_end'] = aEnd;
    data['cov'] = cov;
    data['score'] = score;
    data['ht_score'] = htScore;
    data['ft_score'] = ftScore;
    data['highlighted'] = highlighted;
    data['has_pdata'] = hasPdata;
    data['can_end_with_draw'] = canEndWithDraw;
    data['season'] = season;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    if (notes != null) {
      data['notes'] = notes!.map((v) => v.toJson()).toList();
    }
    // if (odds != null) {
    //   data['odds'] = odds!.toJson();
    // }
    if (highlights != null) {
      data['highlights'] = highlights!.toJson();
    }
    return data;
  }
}

// class LtWidgets {
// 	6? 66;

// 	LtWidgets({this.66});

// 	LtWidgets.fromJson(Map<String, dynamic> json) {
// 		66 = json['6'] != null ? new 6.fromJson(json['6']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.66 != null) {
//       data['6'] = this.66!.toJson();
//     }
// 		return data;
// 	}
// }

// class 6 {
// 	String? id;
// 	String? compId;
// 	String? stId;

// 	6({this.id, this.compId, this.stId});

// 	6.fromJson(Map<String, dynamic> json) {
// 		id = json['id'];
// 		compId = json['comp_id'];
// 		stId = json['st_id'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this.id;
// 		data['comp_id'] = this.compId;
// 		data['st_id'] = this.stId;
// 		return data;
// 	}
// }

class Pids {
  int? pid;
  String? id;

  Pids({this.pid, this.id});

  Pids.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['id'] = id;
    return data;
  }
}

class Teams {
  String? id;
  String? name;
  int? gender;
  String? cid;
  String? cname;
  String? cflag;
  int? pos;
  int? idx;
  int? kn;

  Teams(
      {this.id,
      this.name,
      this.gender,
      this.cid,
      this.cname,
      this.cflag,
      this.pos,
      this.idx,
      this.kn});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    pos = json['pos'];
    idx = json['idx'];
    kn = json['kn'];
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

// class Category {
//   String? identifier;
//   String? title;

//   Category({this.identifier, this.title});

//   Category.fromJson(Map<String, dynamic> json) {
//     identifier = json['identifier'];
//     title = json['title'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['identifier'] = this.identifier;
//     data['title'] = this.title;
//     return data;
//   }
// }

// class Bookmaker {
//   String? identifier;
//   String? title;
//   String? logo;
//   String? homepageUrl;

//   Bookmaker({this.identifier, this.title, this.logo, this.homepageUrl});

//   Bookmaker.fromJson(Map<String, dynamic> json) {
//     identifier = json['identifier'];
//     title = json['title'];
//     logo = json['logo'];
//     homepageUrl = json['homepage_url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['identifier'] = this.identifier;
//     data['title'] = this.title;
//     data['logo'] = this.logo;
//     data['homepage_url'] = this.homepageUrl;
//     return data;
//   }
// }

// class Values {
//   String? valueTitle;
//   Outcome? outcome;
//   String? marketTitle;
//   String? valueId;
//   int? providerId;
//   List<Links>? links;
//   String? priceDec;
//   String? priceFract;
//   String? priceAm;
//   int? direction;
//   int? priceLastChanged;
//   bool? offered;
//   bool? placeholder;
//   PriceBet? priceBet;
//   String? priceLastChangedDEBUG;

//   Values(
//       {this.valueTitle,
//       this.outcome,
//       this.marketTitle,
//       this.valueId,
//       this.providerId,
//       this.links,
//       this.priceDec,
//       this.priceFract,
//       this.priceAm,
//       this.direction,
//       this.priceLastChanged,
//       this.offered,
//       this.placeholder,
//       this.priceBet,
//       this.priceLastChangedDEBUG});

//   Values.fromJson(Map<String, dynamic> json) {
//     valueTitle = json['valueTitle'];
//     outcome =
//         json['outcome'] != null ? new Outcome.fromJson(json['outcome']) : null;
//     marketTitle = json['marketTitle'];
//     valueId = json['valueId'];
//     providerId = json['providerId'];
//     if (json['links'] != null) {
//       links = <Links>[];
//       json['links'].forEach((v) {
//         links!.add(new Links.fromJson(v));
//       });
//     }
//     priceDec = json['priceDec'];
//     priceFract = json['priceFract'];
//     priceAm = json['priceAm'];
//     direction = json['direction'];
//     priceLastChanged = json['priceLastChanged'];
//     offered = json['offered'];
//     placeholder = json['placeholder'];
//     priceBet = json['priceBet'] != null
//         ? new PriceBet.fromJson(json['priceBet'])
//         : null;
//     priceLastChangedDEBUG = json['priceLastChanged_DEBUG'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['valueTitle'] = this.valueTitle;
//     if (this.outcome != null) {
//       data['outcome'] = this.outcome!.toJson();
//     }
//     data['marketTitle'] = this.marketTitle;
//     data['valueId'] = this.valueId;
//     data['providerId'] = this.providerId;
//     if (this.links != null) {
//       data['links'] = this.links!.map((v) => v.toJson()).toList();
//     }
//     data['priceDec'] = this.priceDec;
//     data['priceFract'] = this.priceFract;
//     data['priceAm'] = this.priceAm;
//     data['direction'] = this.direction;
//     data['priceLastChanged'] = this.priceLastChanged;
//     data['offered'] = this.offered;
//     data['placeholder'] = this.placeholder;
//     if (this.priceBet != null) {
//       data['priceBet'] = this.priceBet!.toJson();
//     }
//     data['priceLastChanged_DEBUG'] = this.priceLastChangedDEBUG;
//     return data;
//   }
// }

// class Outcome {
//   String? identifier;

//   Outcome({this.identifier});

//   Outcome.fromJson(Map<String, dynamic> json) {
//     identifier = json['identifier'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['identifier'] = this.identifier;
//     return data;
//   }
// }

// class Links {
//   String? url;

//   Links({this.url});

//   Links.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['url'] = this.url;
//     return data;
//   }
// }

// class PriceBet {
//   String? priceBet;
//   String? priceWin;
//   String? currencySymbol;

//   PriceBet({this.priceBet, this.priceWin, this.currencySymbol});

//   PriceBet.fromJson(Map<String, dynamic> json) {
//     priceBet = json['priceBet'];
//     priceWin = json['priceWin'];
//     currencySymbol = json['currencySymbol'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['priceBet'] = this.priceBet;
//     data['priceWin'] = this.priceWin;
//     data['currencySymbol'] = this.currencySymbol;
//     return data;
//   }
// }

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

class L {
  List<Tables>? tables;

  L({this.tables});

  L.fromJson(Map<String, dynamic> json) {
    if (json['tables'] != null) {
      tables = <Tables>[];
      json['tables'].forEach((v) {
        tables!.add(Tables.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tables != null) {
      data['tables'] = tables!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// class Tables {
//   int? code;
//   String? name;
//   List<Legend>? legend;
//   List<LTeams>? teams;

//   Tables({this.code, this.name, this.legend, this.teams});

//   Tables.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     name = json['name'];
//     if (json['legend'] != null) {
//       legend = <Legend>[];
//       json['legend'].forEach((v) {
//         legend!.add(Legend.fromJson(v));
//       });
//     }
//     if (json['teams'] != null) {
//       teams = <LTeams>[];
//       json['teams'].forEach((v) {
//         teams!.add(LTeams.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['code'] = code;
//     data['name'] = name;
//     if (legend != null) {
//       data['legend'] = legend!.map((v) => v.toJson()).toList();
//     }
//     if (teams != null) {
//       data['teams'] = teams!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Legend {
//   int? stagePhase;
//   String? stagePhaseText;

//   Legend({this.stagePhase, this.stagePhaseText});

//   Legend.fromJson(Map<String, dynamic> json) {
//     stagePhase = json['stage_phase'];
//     stagePhaseText = json['stage_phase_text'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['stage_phase'] = stagePhase;
//     data['stage_phase_text'] = stagePhaseText;
//     return data;
//   }
// }

// class LTeams {
//   int? ranking;
//   String? teamId;
//   String? teamName;
//   String? played;
//   String? wins;
//   String? draws;
//   String? loss;
//   String? goalFor;
//   String? goalAgainst;
//   String? goalDifference;
//   String? points;
//   int? inProgress;
//   List<String>? form;
//   List<int>? stagePhases;

//   LTeams(
//       {this.ranking,
//       this.teamId,
//       this.teamName,
//       this.played,
//       this.wins,
//       this.draws,
//       this.loss,
//       this.goalFor,
//       this.goalAgainst,
//       this.goalDifference,
//       this.points,
//       this.inProgress,
//       this.form,
//       this.stagePhases});

//   LTeams.fromJson(Map<String, dynamic> json) {
//     ranking = json['ranking'];
//     teamId = json['team_id'];
//     teamName = json['team_name'];
//     played = json['played'];
//     wins = json['wins'];
//     draws = json['draws'];
//     loss = json['loss'];
//     goalFor = json['goal_for'];
//     goalAgainst = json['goal_against'];
//     goalDifference = json['goal_difference'];
//     points = json['points'];
//     inProgress = json['in_progress'];
//     form = json['form'] != null ? json['form'].cast<String>() : [];
//     stagePhases =
//         json['stage_phases'] != null ? json['stage_phases'].cast<int>() : [];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['ranking'] = ranking;
//     data['team_id'] = teamId;
//     data['team_name'] = teamName;
//     data['played'] = played;
//     data['wins'] = wins;
//     data['draws'] = draws;
//     data['loss'] = loss;
//     data['goal_for'] = goalFor;
//     data['goal_against'] = goalAgainst;
//     data['goal_difference'] = goalDifference;
//     data['points'] = points;
//     data['in_progress'] = inProgress;
//     data['form'] = form;
//     data['stage_phases'] = stagePhases;
//     return data;
//   }
// }

class Estats {
  String? name;
  List<Stats>? stats;

  Estats({this.name, this.stats});

  Estats.fromJson(Map<String, dynamic> json) {
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

// class Stats {
//   int? ranking;
//   Team? participant;
//   String? stat;

//   Stats({this.ranking, this.participant, this.stat});

//   Stats.fromJson(Map<String, dynamic> json) {
//     ranking = json['ranking'];
//     participant = json['participant'] != null
//         ? new Team.fromJson(json['participant'])
//         : null;
//     stat = json['stat'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['ranking'] = ranking;
//     if (participant != null) {
//       data['participant'] = participant!.toJson();
//     }
//     data['stat'] = stat;
//     return data;
//   }
// }

// class Stats {
//   Team? participant;
//   Team? team;
//   int? ranking;
//   String? stat;

//   Stats({this.participant, this.team, this.ranking, this.stat});

//   Stats.fromJson(Map<String, dynamic> json) {
//     participant = json['participant'] != null
//         ? new Team.fromJson(json['participant'])
//         : null;
//     team = json['team'] != null ? new Team.fromJson(json['team']) : null;
//     ranking = json['ranking'];
//     stat = json['stat'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (participant != null) {
//       data['participant'] = participant!.toJson();
//     }
//     if (this.team != null) {
//       data['team'] = this.team!.toJson();
//     }
//     data['ranking'] = ranking;
//     data['stat'] = stat;
//     return data;
//   }
// }

// class Stats {
//   int? ranking;
//   Team? participant;
//   String? stat;

//   Stats({this.ranking, this.participant, this.stat});

//   Stats.fromJson(Map<String, dynamic> json) {
//     ranking = json['ranking'];
//     participant = json['participant'] != null
//         ? new Team.fromJson(json['participant'])
//         : null;
//     stat = json['stat'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['ranking'] = ranking;
//     if (participant != null) {
//       data['participant'] = participant!.toJson();
//     }
//     data['stat'] = stat;
//     return data;
//   }
// }

class Stats {
  Team? participant;
  Team? team;
  int? ranking;
  String? stat;

  Stats({this.participant, this.team, this.ranking, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    participant =
        json['participant'] != null ? Team.fromJson(json['participant']) : null;
    team = json['team'] != null ? Team.fromJson(json['team']) : null;
    ranking = json['ranking'];
    stat = json['stat'].toString();
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
