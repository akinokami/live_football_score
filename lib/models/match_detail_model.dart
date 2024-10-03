class MatchDetailModel {
  int? pid;
  int? sId;
  String? sCode;
  String? cId;
  String? cName;
  String? cFlag;
  //LtWidgets? ltWidgets;
  String? stId;
  String? stName;
  int? stGender;
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
  List<StatsByScope>? statsByScope;
  List<Stats>? stats;
  int? hasVenue;
  Venue? venue;
  int? hasIncs;
  // Incs? incs;
  Map<String, dynamic>? incs;
  int? hasSubs;
  // Subs? subs;
  Map<String, dynamic>? subs;
  int? hasLineups;
  List<Lineup>? lineup;
  int? lineupOk;
  int? lineupUpdate;
  int? lineupConfirmed;
  int? hasComms;
  List<Comms>? comms;
  int? hasReferee;
  List<Refs>? refs;
  // Odds? odds;
  // List<Opids>? opids;
  List<Forms>? forms;
  List<Lte>? lte;
  Wh2h? wh2h;
  Wstats? wstats;
  Estats? estats;
  List<Notes>? notes;
  Highlights? highlights;

  MatchDetailModel(
      {this.pid,
      this.sId,
      this.sCode,
      this.cId,
      this.cName,
      this.cFlag,
      //this.ltWidgets,
      this.stId,
      this.stName,
      this.stGender,
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
      this.statsByScope,
      this.stats,
      this.hasVenue,
      this.venue,
      this.hasIncs,
      this.incs,
      this.hasSubs,
      this.subs,
      this.hasLineups,
      this.lineup,
      this.lineupOk,
      this.lineupUpdate,
      this.lineupConfirmed,
      this.hasComms,
      this.comms,
      this.hasReferee,
      this.refs,
      //  this.odds,
      // this.opids,
      this.forms,
      this.lte,
      this.wh2h,
      this.wstats,
      this.estats,
      this.notes,
      this.highlights});

  MatchDetailModel.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    sId = json['s_id'];
    sCode = json['s_code'];
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    //ltWidgets = json['lt_widgets'] != null ? new LtWidgets.fromJson(json['lt_widgets']) : null;
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
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
    if (json['stats_by_scope'] != null) {
      statsByScope = <StatsByScope>[];
      json['stats_by_scope'].forEach((v) {
        statsByScope!.add(StatsByScope.fromJson(v));
      });
    }
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
    hasVenue = json['has_venue'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    hasIncs = json['has_incs'];
    // incs = json['incs'] != null ? new Incs.fromJson(json['incs']) : null;
    incs = json['incs'];
    hasSubs = json['has_subs'];
    // subs = json['subs'] != null ? new Subs.fromJson(json['subs']) : null;
    subs = json['subs'];
    hasLineups = json['has_lineups'];
    if (json['lineup'] != null) {
      lineup = <Lineup>[];
      json['lineup'].forEach((v) {
        lineup!.add(Lineup.fromJson(v));
      });
    }
    lineupOk = json['lineup_ok'];
    lineupUpdate = json['lineup_update'];
    lineupConfirmed = json['lineup_confirmed'];
    hasComms = json['has_comms'];
    if (json['comms'] != null) {
      comms = <Comms>[];
      json['comms'].forEach((v) {
        comms!.add(Comms.fromJson(v));
      });
    }
    hasReferee = json['has_referee'];
    if (json['refs'] != null) {
      refs = <Refs>[];
      json['refs'].forEach((v) {
        refs!.add(Refs.fromJson(v));
      });
    }
    // odds = json['odds'] != null ? new Odds.fromJson(json['odds']) : null;
    // if (json['opids'] != null) {
    // 	opids = <Opids>[];
    // 	json['opids'].forEach((v) { opids!.add(new Opids.fromJson(v)); });
    // }
    if (json['forms'] != null) {
      forms = <Forms>[];
      json['forms'].forEach((v) {
        forms!.add(Forms.fromJson(v));
      });
    }
    if (json['lte'] != null) {
      lte = <Lte>[];
      json['lte'].forEach((v) {
        lte!.add(Lte.fromJson(v));
      });
    }
    wh2h = json['wh2h'] != null ? Wh2h.fromJson(json['wh2h']) : null;
    wstats = json['wstats'] != null ? Wstats.fromJson(json['wstats']) : null;
    estats = json['estats'] != null ? Estats.fromJson(json['estats']) : null;
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
    // if (this.ltWidgets != null) {
    //   data['lt_widgets'] = this.ltWidgets!.toJson();
    // }
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
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
    if (statsByScope != null) {
      data['stats_by_scope'] = statsByScope!.map((v) => v.toJson()).toList();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    data['has_venue'] = hasVenue;
    if (venue != null) {
      data['venue'] = venue!.toJson();
    }
    data['has_incs'] = hasIncs;
    // if (this.incs != null) {
    //   data['incs'] = this.incs!.toJson();
    // }
    data['has_subs'] = hasSubs;
    // if (this.subs != null) {
    //   data['subs'] = this.subs!.toJson();
    // }
    data['has_lineups'] = hasLineups;
    if (lineup != null) {
      data['lineup'] = lineup!.map((v) => v.toJson()).toList();
    }
    data['lineup_ok'] = lineupOk;
    data['lineup_update'] = lineupUpdate;
    data['lineup_confirmed'] = lineupConfirmed;
    data['has_comms'] = hasComms;
    if (comms != null) {
      data['comms'] = comms!.map((v) => v.toJson()).toList();
    }
    data['has_referee'] = hasReferee;
    if (refs != null) {
      data['refs'] = refs!.map((v) => v.toJson()).toList();
    }
    // if (this.odds != null) {
    //   data['odds'] = this.odds!.toJson();
    // }
    // if (this.opids != null) {
    //   data['opids'] = this.opids!.map((v) => v.toJson()).toList();
    // }
    if (forms != null) {
      data['forms'] = forms!.map((v) => v.toJson()).toList();
    }
    if (lte != null) {
      data['lte'] = lte!.map((v) => v.toJson()).toList();
    }
    if (wh2h != null) {
      data['wh2h'] = wh2h!.toJson();
    }
    if (wstats != null) {
      data['wstats'] = wstats!.toJson();
    }
    if (estats != null) {
      data['estats'] = estats!.toJson();
    }
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

class StatsByScope {
  List<FullEvent>? fullEvent;
  List<FullEvent>? fstHalf;
  List<FullEvent>? sndHalf;

  StatsByScope({this.fullEvent, this.fstHalf, this.sndHalf});

  StatsByScope.fromJson(Map<String, dynamic> json) {
    if (json['FULL_EVENT'] != null) {
      fullEvent = <FullEvent>[];
      json['FULL_EVENT'].forEach((v) {
        fullEvent!.add(FullEvent.fromJson(v));
      });
    }
    if (json['_1ST_HALF'] != null) {
      fstHalf = <FullEvent>[];
      json['_1ST_HALF'].forEach((v) {
        fstHalf!.add(FullEvent.fromJson(v));
      });
    }
    if (json['_2ND_HALF'] != null) {
      sndHalf = <FullEvent>[];
      json['_2ND_HALF'].forEach((v) {
        sndHalf!.add(FullEvent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fullEvent != null) {
      data['FULL_EVENT'] = fullEvent!.map((v) => v.toJson()).toList();
    }
    if (fstHalf != null) {
      data['_1ST_HALF'] = fstHalf!.map((v) => v.toJson()).toList();
    }
    if (sndHalf != null) {
      data['_2ND_HALF'] = sndHalf!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FullEvent {
  int? pos;
  int? idx;
  int? fouls;
  int? throwIn;
  int? offsides;
  int? possession;
  int? crosses;
  int? corners;
  int? yellow;
  int? shotsOn;
  int? shotsOff;
  int? shotsBlocked;
  int? counterAttacks;
  int? goalKicks;
  int? treatments;

  FullEvent(
      {this.pos,
      this.idx,
      this.fouls,
      this.throwIn,
      this.offsides,
      this.possession,
      this.crosses,
      this.corners,
      this.yellow,
      this.shotsOn,
      this.shotsOff,
      this.shotsBlocked,
      this.counterAttacks,
      this.goalKicks,
      this.treatments});

  FullEvent.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    idx = json['idx'];
    fouls = json['fouls'];
    throwIn = json['throw_in'];
    offsides = json['offsides'];
    possession = json['possession'];
    crosses = json['crosses'];
    corners = json['corners'];
    yellow = json['yellow'];
    shotsOn = json['shots_on'];
    shotsOff = json['shots_off'];
    shotsBlocked = json['shots_blocked'];
    counterAttacks = json['counter_attacks'];
    goalKicks = json['goal_kicks'];
    treatments = json['treatments'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    data['idx'] = idx;
    data['fouls'] = fouls;
    data['throw_in'] = throwIn;
    data['offsides'] = offsides;
    data['possession'] = possession;
    data['crosses'] = crosses;
    data['corners'] = corners;
    data['yellow'] = yellow;
    data['shots_on'] = shotsOn;
    data['shots_off'] = shotsOff;
    data['shots_blocked'] = shotsBlocked;
    data['counter_attacks'] = counterAttacks;
    data['goal_kicks'] = goalKicks;
    data['treatments'] = treatments;
    return data;
  }
}

class Venue {
  String? name;
  String? city;
  String? id;
  String? long;
  String? lat;
  String? capacity;
  String? spectators;
  // List<Null>? battingReport;
  // List<Null>? bowlingReport;

  Venue({
    this.name,
    this.city,
    this.id,
    this.long,
    this.lat,
    this.capacity,
    this.spectators,
    // this.battingReport, this.bowlingReport
  });

  Venue.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    city = json['city'];
    id = json['id'];
    long = json['long'];
    lat = json['lat'];
    capacity = json['capacity'];
    spectators = json['spectators'];
    // if (json['batting_report'] != null) {
    // 	battingReport = <Null>[];
    // 	json['batting_report'].forEach((v) { battingReport!.add(new Null.fromJson(v)); });
    // }
    // if (json['bowling_report'] != null) {
    // 	bowlingReport = <Null>[];
    // 	json['bowling_report'].forEach((v) { bowlingReport!.add(new Null.fromJson(v)); });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['city'] = city;
    data['id'] = id;
    data['long'] = long;
    data['lat'] = lat;
    data['capacity'] = capacity;
    data['spectators'] = spectators;
    // if (this.battingReport != null) {
    //   data['batting_report'] = this.battingReport!.map((v) => v.toJson()).toList();
    // }
    // if (this.bowlingReport != null) {
    //   data['bowling_report'] = this.bowlingReport!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

// class Incs {
// 	IncsData? one;
// 	3? 33;

// 	Incs({this.11, this.33});

// 	Incs.fromJson(Map<String, dynamic> json) {
// 		11 = json['1'] != null ? new IncsDate.fromJson(json['1']) : null;
// 		33 = json['3'] != null ? new 3.fromJson(json['3']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.11 != null) {
//       data['1'] = this.11!.toJson();
//     }
// 		if (this.33 != null) {
//       data['3'] = this.33!.toJson();
//     }
// 		return data;
// 	}
// }

// class IncsData {
// 	List<20>? l20;
// 	List<35>? l35;

// 	1({this.l20, this.l35});

// 	1.fromJson(Map<String, dynamic> json) {
// 		if (json['20'] != null) {
// 			l20 = <20>[];
// 			json['20'].forEach((v) { l20!.add(new 20.fromJson(v)); });
// 		}
// 		if (json['35'] != null) {
// 			l35 = <35>[];
// 			json['35'].forEach((v) { l35!.add(new 35.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.l20 != null) {
//       data['20'] = this.l20!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l35 != null) {
//       data['35'] = this.l35!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class 20 {
// 	int? min;
// 	String? id;
// 	int? pos;
// 	String? plId;
// 	int? plNum;
// 	String? plName;
// 	String? plSName;
// 	int? plNumO;
// 	int? type;
// 	List<int>? score;
// 	List<Assists>? assists;

// 	20({this.min, this.id, this.pos, this.plId, this.plNum, this.plName, this.plSName, this.plNumO, this.type, this.score, this.assists});

// 	20.fromJson(Map<String, dynamic> json) {
// 		min = json['min'];
// 		id = json['id'];
// 		pos = json['pos'];
// 		plId = json['pl_id'];
// 		plNum = json['pl_num'];
// 		plName = json['pl_name'];
// 		plSName = json['pl_s_name'];
// 		plNumO = json['pl_num_o'];
// 		type = json['type'];
// 		score = json['score'].cast<int>();
// 		if (json['assists'] != null) {
// 			assists = <Assists>[];
// 			json['assists'].forEach((v) { assists!.add(new Assists.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['min'] = this.min;
// 		data['id'] = this.id;
// 		data['pos'] = this.pos;
// 		data['pl_id'] = this.plId;
// 		data['pl_num'] = this.plNum;
// 		data['pl_name'] = this.plName;
// 		data['pl_s_name'] = this.plSName;
// 		data['pl_num_o'] = this.plNumO;
// 		data['type'] = this.type;
// 		data['score'] = this.score;
// 		if (this.assists != null) {
//       data['assists'] = this.assists!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class Assists {
// 	String? id;
// 	String? plName;

// 	Assists({this.id, this.plName});

// 	Assists.fromJson(Map<String, dynamic> json) {
// 		id = json['id'];
// 		plName = json['pl_name'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this.id;
// 		data['pl_name'] = this.plName;
// 		return data;
// 	}
// }

// class 35 {
// 	int? min;
// 	String? id;
// 	int? pos;
// 	String? plId;
// 	int? plNum;
// 	String? plName;
// 	String? plSName;
// 	int? plNumO;
// 	int? type;
// 	List<int>? score;
// 	List<Null>? assists;

// 	35({this.min, this.id, this.pos, this.plId, this.plNum, this.plName, this.plSName, this.plNumO, this.type, this.score, this.assists});

// 	35.fromJson(Map<String, dynamic> json) {
// 		min = json['min'];
// 		id = json['id'];
// 		pos = json['pos'];
// 		plId = json['pl_id'];
// 		plNum = json['pl_num'];
// 		plName = json['pl_name'];
// 		plSName = json['pl_s_name'];
// 		plNumO = json['pl_num_o'];
// 		type = json['type'];
// 		score = json['score'].cast<int>();
// 		if (json['assists'] != null) {
// 			assists = <Null>[];
// 			json['assists'].forEach((v) { assists!.add(new Null.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['min'] = this.min;
// 		data['id'] = this.id;
// 		data['pos'] = this.pos;
// 		data['pl_id'] = this.plId;
// 		data['pl_num'] = this.plNum;
// 		data['pl_name'] = this.plName;
// 		data['pl_s_name'] = this.plSName;
// 		data['pl_num_o'] = this.plNumO;
// 		data['type'] = this.type;
// 		data['score'] = this.score;
// 		if (this.assists != null) {
//       data['assists'] = this.assists!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class 3 {
// 	List<46>? l46;
// 	List<64>? l64;
// 	List<74>? l74;
// 	List<76>? l76;
// 	List<90>? l90;

// 	3({this.l46, this.l64, this.l74, this.l76, this.l90});

// 	3.fromJson(Map<String, dynamic> json) {
// 		if (json['46'] != null) {
// 			l46 = <46>[];
// 			json['46'].forEach((v) { l46!.add(new 46.fromJson(v)); });
// 		}
// 		if (json['64'] != null) {
// 			l64 = <64>[];
// 			json['64'].forEach((v) { l64!.add(new 64.fromJson(v)); });
// 		}
// 		if (json['74'] != null) {
// 			l74 = <74>[];
// 			json['74'].forEach((v) { l74!.add(new 74.fromJson(v)); });
// 		}
// 		if (json['76'] != null) {
// 			l76 = <76>[];
// 			json['76'].forEach((v) { l76!.add(new 76.fromJson(v)); });
// 		}
// 		if (json['90'] != null) {
// 			l90 = <90>[];
// 			json['90'].forEach((v) { l90!.add(new 90.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.l46 != null) {
//       data['46'] = this.l46!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l64 != null) {
//       data['64'] = this.l64!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l74 != null) {
//       data['74'] = this.l74!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l76 != null) {
//       data['76'] = this.l76!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l90 != null) {
//       data['90'] = this.l90!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class 46 {
// 	int? min;
// 	String? id;
// 	int? pos;
// 	String? plId;
// 	int? plNum;
// 	String? plName;
// 	String? plSName;
// 	String? plIdO;
// 	int? plNumO;
// 	String? plNameO;
// 	String? plSNameO;
// 	int? type;
// 	List<int>? score;
// 	List<Null>? assists;

// 	46({this.min, this.id, this.pos, this.plId, this.plNum, this.plName, this.plSName, this.plIdO, this.plNumO, this.plNameO, this.plSNameO, this.type, this.score, this.assists});

// 	46.fromJson(Map<String, dynamic> json) {
// 		min = json['min'];
// 		id = json['id'];
// 		pos = json['pos'];
// 		plId = json['pl_id'];
// 		plNum = json['pl_num'];
// 		plName = json['pl_name'];
// 		plSName = json['pl_s_name'];
// 		plIdO = json['pl_id_o'];
// 		plNumO = json['pl_num_o'];
// 		plNameO = json['pl_name_o'];
// 		plSNameO = json['pl_s_name_o'];
// 		type = json['type'];
// 		score = json['score'].cast<int>();
// 		if (json['assists'] != null) {
// 			assists = <Null>[];
// 			json['assists'].forEach((v) { assists!.add(new Null.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['min'] = this.min;
// 		data['id'] = this.id;
// 		data['pos'] = this.pos;
// 		data['pl_id'] = this.plId;
// 		data['pl_num'] = this.plNum;
// 		data['pl_name'] = this.plName;
// 		data['pl_s_name'] = this.plSName;
// 		data['pl_id_o'] = this.plIdO;
// 		data['pl_num_o'] = this.plNumO;
// 		data['pl_name_o'] = this.plNameO;
// 		data['pl_s_name_o'] = this.plSNameO;
// 		data['type'] = this.type;
// 		data['score'] = this.score;
// 		if (this.assists != null) {
//       data['assists'] = this.assists!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class 90 {
// 	int? min;
// 	int? minPlus;
// 	String? id;
// 	int? pos;
// 	String? plId;
// 	int? plNum;
// 	String? plName;
// 	String? plSName;
// 	String? plIdO;
// 	int? plNumO;
// 	String? plNameO;
// 	String? plSNameO;
// 	int? type;
// 	List<int>? score;
// 	List<Null>? assists;

// 	90({this.min, this.minPlus, this.id, this.pos, this.plId, this.plNum, this.plName, this.plSName, this.plIdO, this.plNumO, this.plNameO, this.plSNameO, this.type, this.score, this.assists});

// 	90.fromJson(Map<String, dynamic> json) {
// 		min = json['min'];
// 		minPlus = json['min_plus'];
// 		id = json['id'];
// 		pos = json['pos'];
// 		plId = json['pl_id'];
// 		plNum = json['pl_num'];
// 		plName = json['pl_name'];
// 		plSName = json['pl_s_name'];
// 		plIdO = json['pl_id_o'];
// 		plNumO = json['pl_num_o'];
// 		plNameO = json['pl_name_o'];
// 		plSNameO = json['pl_s_name_o'];
// 		type = json['type'];
// 		score = json['score'].cast<int>();
// 		if (json['assists'] != null) {
// 			assists = <Null>[];
// 			json['assists'].forEach((v) { assists!.add(new Null.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['min'] = this.min;
// 		data['min_plus'] = this.minPlus;
// 		data['id'] = this.id;
// 		data['pos'] = this.pos;
// 		data['pl_id'] = this.plId;
// 		data['pl_num'] = this.plNum;
// 		data['pl_name'] = this.plName;
// 		data['pl_s_name'] = this.plSName;
// 		data['pl_id_o'] = this.plIdO;
// 		data['pl_num_o'] = this.plNumO;
// 		data['pl_name_o'] = this.plNameO;
// 		data['pl_s_name_o'] = this.plSNameO;
// 		data['type'] = this.type;
// 		data['score'] = this.score;
// 		if (this.assists != null) {
//       data['assists'] = this.assists!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class Subs {
// 	3? 33;

// 	Subs({this.33});

// 	Subs.fromJson(Map<String, dynamic> json) {
// 		33 = json['3'] != null ? new 3.fromJson(json['3']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.33 != null) {
//       data['3'] = this.33!.toJson();
//     }
// 		return data;
// 	}
// }

// class 3 {
// 	List<46>? l46;
// 	List<64>? l64;
// 	List<74>? l74;
// 	List<90>? l90;

// 	3({this.l46, this.l64, this.l74, this.l90});

// 	3.fromJson(Map<String, dynamic> json) {
// 		if (json['46'] != null) {
// 			l46 = <46>[];
// 			json['46'].forEach((v) { l46!.add(new 46.fromJson(v)); });
// 		}
// 		if (json['64'] != null) {
// 			l64 = <64>[];
// 			json['64'].forEach((v) { l64!.add(new 64.fromJson(v)); });
// 		}
// 		if (json['74'] != null) {
// 			l74 = <74>[];
// 			json['74'].forEach((v) { l74!.add(new 74.fromJson(v)); });
// 		}
// 		if (json['90'] != null) {
// 			l90 = <90>[];
// 			json['90'].forEach((v) { l90!.add(new 90.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.l46 != null) {
//       data['46'] = this.l46!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l64 != null) {
//       data['64'] = this.l64!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l74 != null) {
//       data['74'] = this.l74!.map((v) => v.toJson()).toList();
//     }
// 		if (this.l90 != null) {
//       data['90'] = this.l90!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

class Lineup {
  int? pos;
  List<LineupPerson>? starting;
  List<LineupPerson>? substitutes;
  List<LineupPerson>? injured;
  // List<Null>? suspended;
  // List<Null>? squad;
  List<LineupPerson>? coaches;

  Lineup(
      {this.pos,
      this.starting,
      this.substitutes,
      this.injured,
      // this.suspended,
      // this.squad,
      this.coaches});

  Lineup.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    if (json['starting'] != null) {
      starting = <LineupPerson>[];
      json['starting'].forEach((v) {
        starting!.add(LineupPerson.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = <LineupPerson>[];
      json['substitutes'].forEach((v) {
        substitutes!.add(LineupPerson.fromJson(v));
      });
    }
    if (json['injured'] != null) {
      injured = <LineupPerson>[];
      json['injured'].forEach((v) {
        injured!.add(LineupPerson.fromJson(v));
      });
    }
    // if (json['suspended'] != null) {
    //   suspended = <Null>[];
    //   json['suspended'].forEach((v) {
    //     suspended!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['squad'] != null) {
    //   squad = <Null>[];
    //   json['squad'].forEach((v) {
    //     squad!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['coaches'] != null) {
      coaches = <LineupPerson>[];
      json['coaches'].forEach((v) {
        coaches!.add(LineupPerson.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    if (starting != null) {
      data['starting'] = starting!.map((v) => v.toJson()).toList();
    }
    if (substitutes != null) {
      data['substitutes'] = substitutes!.map((v) => v.toJson()).toList();
    }
    if (injured != null) {
      data['injured'] = injured!.map((v) => v.toJson()).toList();
    }
    // if (this.suspended != null) {
    //   data['suspended'] = this.suspended!.map((v) => v.toJson()).toList();
    // }
    // if (this.squad != null) {
    //   data['squad'] = this.squad!.map((v) => v.toJson()).toList();
    // }
    // if (this.coaches != null) {
    //   data['coaches'] = this.coaches!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class LineupPerson {
  String? id;
  String? name;
  int? pos;
  int? aPos;
  int? eIn;
  int? eOut;
  int? jNum;
  int? kn;
  int? captain;

  LineupPerson(
      {this.id,
      this.name,
      this.pos,
      this.aPos,
      this.eIn,
      this.eOut,
      this.jNum,
      this.kn,
      this.captain});

  LineupPerson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pos = json['pos'];
    aPos = json['a_pos'];
    eIn = json['e_in'];
    eOut = json['e_out'];
    jNum = json['j_num'];
    kn = json['kn'];
    captain = json['captain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['pos'] = pos;
    data['a_pos'] = aPos;
    data['e_in'] = eIn;
    data['e_out'] = eOut;
    data['j_num'] = jNum;
    data['kn'] = kn;
    data['captain'] = captain;
    return data;
  }
}

class Comms {
  String? txt;
  int? min;
  int? injTime;
  int? type;

  Comms({this.txt, this.min, this.injTime, this.type});

  Comms.fromJson(Map<String, dynamic> json) {
    txt = json['txt'];
    min = json['min'];
    injTime = json['inj_time'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['txt'] = txt;
    data['min'] = min;
    data['inj_time'] = injTime;
    data['type'] = type;
    return data;
  }
}

class Refs {
  String? name;
  int? kn;
  String? cid;
  String? cname;

  Refs({this.name, this.kn, this.cid, this.cname});

  Refs.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    kn = json['kn'];
    cid = json['cid'];
    cname = json['cname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['kn'] = kn;
    data['cid'] = cid;
    data['cname'] = cname;
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

class Forms {
  String? id;
  String? name;
  int? gender;
  String? cid;
  String? cname;
  String? cflag;
  int? pos;
  int? idx;
  int? kn;
  List<String>? formsText;
  List<Results>? results;

  Forms(
      {this.id,
      this.name,
      this.gender,
      this.cid,
      this.cname,
      this.cflag,
      this.pos,
      this.idx,
      this.kn,
      this.formsText,
      this.results});

  Forms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    pos = json['pos'];
    idx = json['idx'];
    kn = json['kn'];
    formsText =
        json['formsText'] != null ? json['formsText'].cast<String>() : [];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
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
    data['formsText'] = formsText;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? pid;
  int? sId;
  String? sCode;
  String? cId;
  String? cName;
  String? cFlag;
  // LtWidgets? ltWidgets;
  String? stId;
  String? stName;
  int? stGender;
  int? format;
  String? id;
  List<Pids>? pids;
  int? ut;
  int? status;
  int? pStatus;
  int? oStatus;
  int? poStatus;
  int? elapsed;
  int? play;
  int? elapsedT;
  String? round;
  int? start;
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
  String? statusTxt;
  int? elapsedI;
  int? aStart;
  int? aEnd;

  Results(
      {this.pid,
      this.sId,
      this.sCode,
      this.cId,
      this.cName,
      this.cFlag,
      // this.ltWidgets,
      this.stId,
      this.stName,
      this.stGender,
      this.format,
      this.id,
      this.pids,
      this.ut,
      this.status,
      this.pStatus,
      this.oStatus,
      this.poStatus,
      this.elapsed,
      this.play,
      this.elapsedT,
      this.round,
      this.start,
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
      this.statusTxt,
      this.elapsedI,
      this.aStart,
      this.aEnd});

  Results.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    sId = json['s_id'];
    sCode = json['s_code'];
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    // ltWidgets = json['lt_widgets'] != null
    //     ? new LtWidgets.fromJson(json['lt_widgets'])
    //     : null;
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
    format = json['format'];
    id = json['id'];
    if (json['pids'] != null) {
      pids = <Pids>[];
      json['pids'].forEach((v) {
        pids!.add(Pids.fromJson(v));
      });
    }
    ut = json['ut'];
    status = json['status'];
    pStatus = json['p_status'];
    oStatus = json['o_status'];
    poStatus = json['po_status'];
    elapsed = json['elapsed'];
    play = json['play'];
    elapsedT = json['elapsed_t'];
    round = json['round'];
    start = json['start'];
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
    statusTxt = json['status_txt'];
    elapsedI = json['elapsed_i'];
    aStart = json['a_start'];
    aEnd = json['a_end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['s_id'] = sId;
    data['s_code'] = sCode;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    // if (this.ltWidgets != null) {
    //   data['lt_widgets'] = this.ltWidgets!.toJson();
    // }
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
    data['format'] = format;
    data['id'] = id;
    if (pids != null) {
      data['pids'] = pids!.map((v) => v.toJson()).toList();
    }
    data['ut'] = ut;
    data['status'] = status;
    data['p_status'] = pStatus;
    data['o_status'] = oStatus;
    data['po_status'] = poStatus;
    data['elapsed'] = elapsed;
    data['play'] = play;
    data['elapsed_t'] = elapsedT;
    data['round'] = round;
    data['start'] = start;
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
    data['status_txt'] = statusTxt;
    data['elapsed_i'] = elapsedI;
    data['a_start'] = aStart;
    data['a_end'] = aEnd;
    return data;
  }
}

class Lte {
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

  Lte(
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

  Lte.fromJson(Map<String, dynamic> json) {
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

class Wh2h {
  int? playedMatches;
  Teams? teams;

  Wh2h({this.playedMatches, this.teams});

  Wh2h.fromJson(Map<String, dynamic> json) {
    playedMatches = json['played_matches'];
    teams = json['teams'] != null ? Teams.fromJson(json['teams']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['played_matches'] = playedMatches;
    if (teams != null) {
      data['teams'] = teams!.toJson();
    }
    return data;
  }
}

// class Teams {
//   Home? home;
//   Away? away;

//   Teams({this.home, this.away});

//   Teams.fromJson(Map<String, dynamic> json) {
//     home = json['home'] != null ? new Home.fromJson(json['home']) : null;
//     away = json['away'] != null ? new Away.fromJson(json['away']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.home != null) {
//       data['home'] = this.home!.toJson();
//     }
//     if (this.away != null) {
//       data['away'] = this.away!.toJson();
//     }
//     return data;
//   }
// }

// class Home {
//   String? name;
//   int? numberOfWins;

//   Home({this.name, this.numberOfWins});

//   Home.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     numberOfWins = json['number_of_wins'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['number_of_wins'] = this.numberOfWins;
//     return data;
//   }
// }

// class Away {
//   String? name;

//   Away({this.name});

//   Away.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     return data;
//   }
// }

class Wstats {
  List<TeamSeason>? teamSeason;

  Wstats({this.teamSeason});

  Wstats.fromJson(Map<String, dynamic> json) {
    if (json['team_season'] != null) {
      teamSeason = <TeamSeason>[];
      json['team_season'].forEach((v) {
        teamSeason!.add(TeamSeason.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (teamSeason != null) {
      data['team_season'] = teamSeason!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeamSeason {
  int? pos;
  int? firstGoalPercentage;
  int? bothToScorePercentage;
  int? matchesWonPercentage;
  int? matchesWonHomePercentage;
  int? matchesWonAwayPercentage;
  String? averageGoalsInMatch;

  TeamSeason(
      {this.pos,
      this.firstGoalPercentage,
      this.bothToScorePercentage,
      this.matchesWonPercentage,
      this.matchesWonHomePercentage,
      this.matchesWonAwayPercentage,
      this.averageGoalsInMatch});

  TeamSeason.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    firstGoalPercentage = json['first_goal_percentage'];
    bothToScorePercentage = json['both_to_score_percentage'];
    matchesWonPercentage = json['matches_won_percentage'];
    matchesWonHomePercentage = json['matches_won_home_percentage'];
    matchesWonAwayPercentage = json['matches_won_away_percentage'];
    averageGoalsInMatch = json['average_goals_in_match'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    data['first_goal_percentage'] = firstGoalPercentage;
    data['both_to_score_percentage'] = bothToScorePercentage;
    data['matches_won_percentage'] = matchesWonPercentage;
    data['matches_won_home_percentage'] = matchesWonHomePercentage;
    data['matches_won_away_percentage'] = matchesWonAwayPercentage;
    data['average_goals_in_match'] = averageGoalsInMatch;
    return data;
  }
}

class Estats {
  EstatsTeams? teams;

  Estats({this.teams});

  Estats.fromJson(Map<String, dynamic> json) {
    teams = json['teams'] != null ? EstatsTeams.fromJson(json['teams']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (teams != null) {
      data['teams'] = teams!.toJson();
    }
    return data;
  }
}

class EstatsTeams {
  List<Seasons>? seasons;

  EstatsTeams({this.seasons});

  EstatsTeams.fromJson(Map<String, dynamic> json) {
    if (json['seasons'] != null) {
      seasons = <Seasons>[];
      json['seasons'].forEach((v) {
        seasons!.add(Seasons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (seasons != null) {
      data['seasons'] = seasons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Seasons {
  List<TeamStats>? teamStats;

  Seasons({this.teamStats});

  Seasons.fromJson(Map<String, dynamic> json) {
    if (json['team_stats'] != null) {
      teamStats = <TeamStats>[];
      json['team_stats'].forEach((v) {
        teamStats!.add(TeamStats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (teamStats != null) {
      data['team_stats'] = teamStats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeamStats {
  String? penaltySaveRate;
  String? commitedByOppositionInMatch;
  String? defensiveErrorsInMatch;
  num? matchesWonHomePercentage;
  num? matchesWonAwayPercentage;
  num? totalCleanSheets;
  num? cornerTakenPerGame;
  num? offsidePerGame;
  num? penaltyCommit;
  num? foulCommitPerGame;
  num? headGoalPerc;
  num? shotonPerGame;
  num? shotoffPerGame;
  num? shotsonPerGoal;
  num? averagePossession;
  num? totalYellowCard;
  String? averageGoalsInMatch;
  String? goalsForPerMatch;
  String? ownGoalsByOppositionTeams;
  num? wonSecondHalfPercentage;
  num? firstGoalPercentage;
  num? lastGoalPercentage;
  num? wonWhen1x0UpPercentage;
  num? goalRatioMinute76x90;
  num? lastGaspGoalsTeam;
  num? wonToNilPercentage;
  num? totalCardsYellowRedPerGamePercentage;

  TeamStats(
      {this.penaltySaveRate,
      this.commitedByOppositionInMatch,
      this.defensiveErrorsInMatch,
      this.matchesWonHomePercentage,
      this.matchesWonAwayPercentage,
      this.totalCleanSheets,
      this.cornerTakenPerGame,
      this.offsidePerGame,
      this.penaltyCommit,
      this.foulCommitPerGame,
      this.headGoalPerc,
      this.shotonPerGame,
      this.shotoffPerGame,
      this.shotsonPerGoal,
      this.averagePossession,
      this.totalYellowCard,
      this.averageGoalsInMatch,
      this.goalsForPerMatch,
      this.ownGoalsByOppositionTeams,
      this.wonSecondHalfPercentage,
      this.firstGoalPercentage,
      this.lastGoalPercentage,
      this.wonWhen1x0UpPercentage,
      this.goalRatioMinute76x90,
      this.lastGaspGoalsTeam,
      this.wonToNilPercentage,
      this.totalCardsYellowRedPerGamePercentage});

  TeamStats.fromJson(Map<String, dynamic> json) {
    penaltySaveRate = json['penalty_save_rate'];
    commitedByOppositionInMatch = json['commited_by_opposition_in_match'];
    defensiveErrorsInMatch = json['defensive_errors_in_match'];
    matchesWonHomePercentage = json['matches_won_home_percentage'];
    matchesWonAwayPercentage = json['matches_won_away_percentage'];
    totalCleanSheets = json['total_clean_sheets'];
    cornerTakenPerGame = json['corner_taken_per_game'];
    offsidePerGame = json['offside_per_game'];
    penaltyCommit = json['penalty_commit'];
    foulCommitPerGame = json['foul_commit_per_game'];
    headGoalPerc = json['head_goal_perc'];
    shotonPerGame = json['shoton_per_game'];
    shotoffPerGame = json['shotoff_per_game'];
    shotsonPerGoal = json['shotson_per_goal'];
    averagePossession = json['average_possession'];
    totalYellowCard = json['total_yellow_card'];
    averageGoalsInMatch = json['average_goals_in_match'];
    goalsForPerMatch = json['goals_for_per_match'];
    ownGoalsByOppositionTeams = json['own_goals_by_opposition_teams'];
    wonSecondHalfPercentage = json['won_second_half_percentage'];
    firstGoalPercentage = json['first_goal_percentage'];
    lastGoalPercentage = json['last_goal_percentage'];
    wonWhen1x0UpPercentage = json['won_when_1x0_up_percentage'];
    goalRatioMinute76x90 = json['goal_ratio_minute_76x90'];
    lastGaspGoalsTeam = json['last_gasp_goals_team'];
    wonToNilPercentage = json['won_to_nil_percentage'];
    totalCardsYellowRedPerGamePercentage =
        json['total_cards_yellow_red_per_game_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['penalty_save_rate'] = penaltySaveRate;
    data['commited_by_opposition_in_match'] = commitedByOppositionInMatch;
    data['defensive_errors_in_match'] = defensiveErrorsInMatch;
    data['matches_won_home_percentage'] = matchesWonHomePercentage;
    data['matches_won_away_percentage'] = matchesWonAwayPercentage;
    data['total_clean_sheets'] = totalCleanSheets;
    data['corner_taken_per_game'] = cornerTakenPerGame;
    data['offside_per_game'] = offsidePerGame;
    data['penalty_commit'] = penaltyCommit;
    data['foul_commit_per_game'] = foulCommitPerGame;
    data['head_goal_perc'] = headGoalPerc;
    data['shoton_per_game'] = shotonPerGame;
    data['shotoff_per_game'] = shotoffPerGame;
    data['shotson_per_goal'] = shotsonPerGoal;
    data['average_possession'] = averagePossession;
    data['total_yellow_card'] = totalYellowCard;
    data['average_goals_in_match'] = averageGoalsInMatch;
    data['goals_for_per_match'] = goalsForPerMatch;
    data['own_goals_by_opposition_teams'] = ownGoalsByOppositionTeams;
    data['won_second_half_percentage'] = wonSecondHalfPercentage;
    data['first_goal_percentage'] = firstGoalPercentage;
    data['last_goal_percentage'] = lastGoalPercentage;
    data['won_when_1x0_up_percentage'] = wonWhen1x0UpPercentage;
    data['goal_ratio_minute_76x90'] = goalRatioMinute76x90;
    data['last_gasp_goals_team'] = lastGaspGoalsTeam;
    data['won_to_nil_percentage'] = wonToNilPercentage;
    data['total_cards_yellow_red_per_game_percentage'] =
        totalCardsYellowRedPerGamePercentage;
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

class Stats {
  int? pos;
  int? idx;
  int? fouls;
  int? throwIn;
  int? offsides;
  int? possession;
  int? crosses;
  int? corners;
  int? yellow;
  int? shotsOn;
  int? shotsOff;
  int? shotsBlocked;
  int? counterAttacks;
  int? goalKicks;

  Stats(
      {this.pos,
      this.idx,
      this.fouls,
      this.throwIn,
      this.offsides,
      this.possession,
      this.crosses,
      this.corners,
      this.yellow,
      this.shotsOn,
      this.shotsOff,
      this.shotsBlocked,
      this.counterAttacks,
      this.goalKicks});

  Stats.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    idx = json['idx'];
    fouls = json['fouls'];
    throwIn = json['throw_in'];
    offsides = json['offsides'];
    possession = json['possession'];
    crosses = json['crosses'];
    corners = json['corners'];
    yellow = json['yellow'];
    shotsOn = json['shots_on'];
    shotsOff = json['shots_off'];
    shotsBlocked = json['shots_blocked'];
    counterAttacks = json['counter_attacks'];
    goalKicks = json['goal_kicks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    data['idx'] = idx;
    data['fouls'] = fouls;
    data['throw_in'] = throwIn;
    data['offsides'] = offsides;
    data['possession'] = possession;
    data['crosses'] = crosses;
    data['corners'] = corners;
    data['yellow'] = yellow;
    data['shots_on'] = shotsOn;
    data['shots_off'] = shotsOff;
    data['shots_blocked'] = shotsBlocked;
    data['counter_attacks'] = counterAttacks;
    data['goal_kicks'] = goalKicks;
    return data;
  }
}
