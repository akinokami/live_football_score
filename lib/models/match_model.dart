class MatchModel {
  String? cName;
  String? cCode;
  String? cId;
  String? cFlag;
  String? stName;
  String? stCode;
  String? stId;
  int? stOrder;
  List<String>? countryCodes;
  int? highlighted;
  int? isPopular;
  List<Matches>? matches;

  MatchModel(
      {this.cName,
      this.cCode,
      this.cId,
      this.cFlag,
      this.stName,
      this.stCode,
      this.stId,
      this.stOrder,
      this.countryCodes,
      this.highlighted,
      this.isPopular,
      this.matches});

  MatchModel.fromJson(Map<String, dynamic> json) {
    cName = json['c_name'];
    cCode = json['c_code'];
    cId = json['c_id'];
    cFlag = json['c_flag'];
    stName = json['st_name'];
    stCode = json['st_code'];
    stId = json['st_id'];
    stOrder = json['st_order'];
    countryCodes =
        json['countryCodes'] != null ? json['countryCodes'].cast<String>() : [];
    highlighted = json['highlighted'];
    isPopular = json['isPopular'];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['c_name'] = cName;
    data['c_code'] = cCode;
    data['c_id'] = cId;
    data['c_flag'] = cFlag;
    data['st_name'] = stName;
    data['st_code'] = stCode;
    data['st_id'] = stId;
    data['st_order'] = stOrder;
    data['countryCodes'] = countryCodes;
    data['highlighted'] = highlighted;
    data['isPopular'] = isPopular;
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
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
  //LtWidgets? ltWidgets;
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
  int? noTable;
  int? noScorers;
  List<Teams>? teams;
  int? hasStats;
  int? hasIncs;
  int? hasSubs;
  int? hasLineups;
  int? hasComms;
  int? hasReferee;
  // Odds? odds;
  //List<Opids>? opids;
  List<Notes>? notes;
  Highlights? highlights;

  Matches(
      {this.pid,
      this.sId,
      this.sCode,
      this.cId,
      this.cName,
      this.cFlag,
      this.cCode,
      //this.ltWidgets,
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
      this.noTable,
      this.noScorers,
      this.teams,
      this.hasStats,
      this.hasIncs,
      this.hasSubs,
      this.hasLineups,
      this.hasComms,
      this.hasReferee,
      // this.odds,
      //this.opids,
      this.notes,
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
    noTable = json['noTable'];
    noScorers = json['noScorers'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
    hasStats = json['has_stats'];
    hasIncs = json['has_incs'];
    hasSubs = json['has_subs'];
    hasLineups = json['has_lineups'];
    hasComms = json['has_comms'];
    hasReferee = json['has_referee'];
    // odds = json['odds'] != null ? new Odds.fromJson(json['odds']) : null;
    // if (json['opids'] != null) {
    //   opids = <Opids>[];
    //   json['opids'].forEach((v) {
    //     opids!.add(new Opids.fromJson(v));
    //   });
    // }
    if (json['notes'] != null) {
      notes = <Notes>[];
      json['notes'].forEach((v) {
        notes!.add(Notes.fromJson(v));
      });
    }
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
    data['noTable'] = noTable;
    data['noScorers'] = noScorers;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    data['has_stats'] = hasStats;
    data['has_incs'] = hasIncs;
    data['has_subs'] = hasSubs;
    data['has_lineups'] = hasLineups;
    data['has_comms'] = hasComms;
    data['has_referee'] = hasReferee;
    // if (this.odds != null) {
    //   data['odds'] = this.odds!.toJson();
    // }
    // if (this.opids != null) {
    //   data['opids'] = this.opids!.map((v) => v.toJson()).toList();
    // }
    if (notes != null) {
      data['notes'] = notes!.map((v) => v.toJson()).toList();
    }
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
  int? ptrn;
  int? assists;
  int? goals;
  int? ownGoals;
  int? red;
  int? yellow;
  int? i2ndYellow;

  Teams(
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
      this.assists,
      this.goals,
      this.ownGoals,
      this.red,
      this.yellow,
      this.i2ndYellow});

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
    ptrn = json['ptrn'];
    assists = json['assists'];
    goals = json['goals'];
    ownGoals = json['own_goals'];
    red = json['red'];
    yellow = json['yellow'];
    i2ndYellow = json['2nd_yellow'];
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
    data['assists'] = assists;
    data['goals'] = goals;
    data['own_goals'] = ownGoals;
    data['red'] = red;
    data['yellow'] = yellow;
    data['2nd_yellow'] = i2ndYellow;
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
