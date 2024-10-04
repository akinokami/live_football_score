class PlayerModel {
  String? id;
  String? name;
  num? height;
  num? weight;
  int? pos;
  String? dateOfBirth;
  int? age;
  String? teamId;
  String? cid;
  String? cname;
  String? cflag;
  List<Teams>? teams;
  List<Stats>? stats;

  PlayerModel(
      {this.id,
      this.name,
      this.height,
      this.weight,
      this.pos,
      this.dateOfBirth,
      this.age,
      this.teamId,
      this.cid,
      this.cname,
      this.cflag,
      this.teams,
      this.stats});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    height = json['height'];
    weight = json['weight'];
    pos = json['pos'];
    dateOfBirth = json['date_of_birth'];
    age = json['age'];
    teamId = json['team_id'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['height'] = height;
    data['weight'] = weight;
    data['pos'] = pos;
    data['date_of_birth'] = dateOfBirth;
    data['age'] = age;
    data['team_id'] = teamId;
    data['cid'] = cid;
    data['cname'] = cname;
    data['cflag'] = cflag;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teams {
  String? id;
  int? active;
  int? isNational;
  int? onLoan;
  String? dateFrom;
  String? name;
  String? sNumber;
  String? cid;
  String? cname;
  String? cflag;
  String? fromTo;
  String? dateTo;

  Teams(
      {this.id,
      this.active,
      this.isNational,
      this.onLoan,
      this.dateFrom,
      this.name,
      this.sNumber,
      this.cid,
      this.cname,
      this.cflag,
      this.fromTo,
      this.dateTo});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    isNational = json['is_national'];
    onLoan = json['on_loan'];
    dateFrom = json['date_from'];
    name = json['name'];
    sNumber = json['s_number'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    fromTo = json['fromTo'];
    dateTo = json['date_to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['active'] = active;
    data['is_national'] = isNational;
    data['on_loan'] = onLoan;
    data['date_from'] = dateFrom;
    data['name'] = name;
    data['s_number'] = sNumber;
    data['cid'] = cid;
    data['cname'] = cname;
    data['cflag'] = cflag;
    data['fromTo'] = fromTo;
    data['date_to'] = dateTo;
    return data;
  }
}

class Stats {
  Stage? stage;
  StatsOne? stats;

  Stats({this.stage, this.stats});

  Stats.fromJson(Map<String, dynamic> json) {
    stage = json['stage'] != null ? Stage.fromJson(json['stage']) : null;
    stats = json['stats'] != null ? StatsOne.fromJson(json['stats']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (stage != null) {
      data['stage'] = stage!.toJson();
    }
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    return data;
  }
}

class Stage {
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
  String? season;

  Stage(
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
      this.season});

  Stage.fromJson(Map<String, dynamic> json) {
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
    season = json['season'];
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
    data['season'] = season;
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

class StatsOne {
  String? tOTALGOALS;
  String? tOTALASSIST;
  String? gOALRATIO;
  String? mINUTESPERGOAL;
  String? tEAMCONTRIBUTIONPERCENTAGE;
  String? pENALTYGOALS;
  String? pENALTYMISSED;
  String? gOALSINSIDEBOX;
  String? gOALSOUTSIDEBOX;
  String? hEADEDGOALS;
  String? tOTALGOALSASSUBSTITUTE;
  String? wOODWORK;
  String? tOTALSHOTS;
  String? sHOTSONPERGOAL;
  String? tOTALBLOCKEDSHOTS;
  String? kEYPASSES;
  String? tOTALCROSSES;
  String? tOTALSUCCESSFULCROSSES;
  String? tOTALDIRECTFREEKICK;
  String? tOTALGOALATTEMPTS;
  String? oWNGOALS;
  String? dEFENSIVEERROR;
  String? pENALTYCOMMIT;
  String? tOTALCLEARANCES;
  String? tOTALINTERCEPTEDCROSSES;
  String? tOTALTACKLES;
  String? gOALCONCEDED;
  String? tOTALCLEANSHEETS;
  String? tOTALCLEANSHEETSPERCENTAGE;
  String? kEEPERSAVES;
  String? pENALTYSAVES;
  String? sAVESPERGAME;
  String? sAVESPERCENTAGE;
  String? tOTALSHOTSALLOWED;
  String? nOCONCEDINGINROW;
  String? tOTALCARDS;
  String? tOTALREDCARDS;
  String? tOTALYELLOWCARDS;
  String? fOULCOMMITPERGAME;
  String? fOULSUFFERED;
  String? tOTALFOULSCOMMITTED;
  String? mINUTESPLAYED;
  String? tOTALSTARTS;
  String? tOTALSTARTSPERCENTAGE;
  String? tOTALSUBSTITUTEIN;
  String? tOTALOFFSIDES;
  String? tOTALAIRCHALLENGESWON;
  String? tOTALAIRCHALLENGESLOST;

  StatsOne(
      {this.tOTALGOALS,
      this.tOTALASSIST,
      this.gOALRATIO,
      this.mINUTESPERGOAL,
      this.tEAMCONTRIBUTIONPERCENTAGE,
      this.pENALTYGOALS,
      this.pENALTYMISSED,
      this.gOALSINSIDEBOX,
      this.gOALSOUTSIDEBOX,
      this.hEADEDGOALS,
      this.tOTALGOALSASSUBSTITUTE,
      this.wOODWORK,
      this.tOTALSHOTS,
      this.sHOTSONPERGOAL,
      this.tOTALBLOCKEDSHOTS,
      this.kEYPASSES,
      this.tOTALCROSSES,
      this.tOTALSUCCESSFULCROSSES,
      this.tOTALDIRECTFREEKICK,
      this.tOTALGOALATTEMPTS,
      this.oWNGOALS,
      this.dEFENSIVEERROR,
      this.pENALTYCOMMIT,
      this.tOTALCLEARANCES,
      this.tOTALINTERCEPTEDCROSSES,
      this.tOTALTACKLES,
      this.gOALCONCEDED,
      this.tOTALCLEANSHEETS,
      this.tOTALCLEANSHEETSPERCENTAGE,
      this.kEEPERSAVES,
      this.pENALTYSAVES,
      this.sAVESPERGAME,
      this.sAVESPERCENTAGE,
      this.tOTALSHOTSALLOWED,
      this.nOCONCEDINGINROW,
      this.tOTALCARDS,
      this.tOTALREDCARDS,
      this.tOTALYELLOWCARDS,
      this.fOULCOMMITPERGAME,
      this.fOULSUFFERED,
      this.tOTALFOULSCOMMITTED,
      this.mINUTESPLAYED,
      this.tOTALSTARTS,
      this.tOTALSTARTSPERCENTAGE,
      this.tOTALSUBSTITUTEIN,
      this.tOTALOFFSIDES,
      this.tOTALAIRCHALLENGESWON,
      this.tOTALAIRCHALLENGESLOST});

  StatsOne.fromJson(Map<String, dynamic> json) {
    tOTALGOALS = json['TOTAL_GOALS'];
    tOTALASSIST = json['TOTAL_ASSIST'];
    gOALRATIO = json['GOAL_RATIO'];
    mINUTESPERGOAL = json['MINUTES_PER_GOAL'];
    tEAMCONTRIBUTIONPERCENTAGE = json['TEAM_CONTRIBUTION_PERCENTAGE'];
    pENALTYGOALS = json['PENALTY_GOALS'];
    pENALTYMISSED = json['PENALTY_MISSED'];
    gOALSINSIDEBOX = json['GOALS_INSIDE_BOX'];
    gOALSOUTSIDEBOX = json['GOALS_OUTSIDE_BOX'];
    hEADEDGOALS = json['HEADED_GOALS'];
    tOTALGOALSASSUBSTITUTE = json['TOTAL_GOALS_AS_SUBSTITUTE'];
    wOODWORK = json['WOODWORK'];
    tOTALSHOTS = json['TOTAL_SHOTS'];
    sHOTSONPERGOAL = json['SHOTS_ON_PER_GOAL'];
    tOTALBLOCKEDSHOTS = json['TOTAL_BLOCKED_SHOTS'];
    kEYPASSES = json['KEY_PASSES'];
    tOTALCROSSES = json['TOTAL_CROSSES'];
    tOTALSUCCESSFULCROSSES = json['TOTAL_SUCCESSFUL_CROSSES'];
    tOTALDIRECTFREEKICK = json['TOTAL_DIRECT_FREE_KICK'];
    tOTALGOALATTEMPTS = json['TOTAL_GOAL_ATTEMPTS'];
    oWNGOALS = json['OWN_GOALS'];
    dEFENSIVEERROR = json['DEFENSIVE_ERROR'];
    pENALTYCOMMIT = json['PENALTY_COMMIT'];
    tOTALCLEARANCES = json['TOTAL_CLEARANCES'];
    tOTALINTERCEPTEDCROSSES = json['TOTAL_INTERCEPTED_CROSSES'];
    tOTALTACKLES = json['TOTAL_TACKLES'];
    gOALCONCEDED = json['GOAL_CONCEDED'];
    tOTALCLEANSHEETS = json['TOTAL_CLEAN_SHEETS'];
    tOTALCLEANSHEETSPERCENTAGE = json['TOTAL_CLEAN_SHEETS_PERCENTAGE'];
    kEEPERSAVES = json['KEEPER_SAVES'];
    pENALTYSAVES = json['PENALTY_SAVES'];
    sAVESPERGAME = json['SAVES_PER_GAME'];
    sAVESPERCENTAGE = json['SAVES_PERCENTAGE'];
    tOTALSHOTSALLOWED = json['TOTAL_SHOTS_ALLOWED'];
    nOCONCEDINGINROW = json['NO_CONCEDING_IN_ROW'];
    tOTALCARDS = json['TOTAL_CARDS'];
    tOTALREDCARDS = json['TOTAL_RED_CARDS'];
    tOTALYELLOWCARDS = json['TOTAL_YELLOW_CARDS'];
    fOULCOMMITPERGAME = json['FOUL_COMMIT_PER_GAME'];
    fOULSUFFERED = json['FOUL_SUFFERED'];
    tOTALFOULSCOMMITTED = json['TOTAL_FOULS_COMMITTED'];
    mINUTESPLAYED = json['MINUTES_PLAYED'];
    tOTALSTARTS = json['TOTAL_STARTS'];
    tOTALSTARTSPERCENTAGE = json['TOTAL_STARTS_PERCENTAGE'];
    tOTALSUBSTITUTEIN = json['TOTAL_SUBSTITUTE_IN'];
    tOTALOFFSIDES = json['TOTAL_OFFSIDES'];
    tOTALAIRCHALLENGESWON = json['TOTAL_AIR_CHALLENGES_WON'];
    tOTALAIRCHALLENGESLOST = json['TOTAL_AIR_CHALLENGES_LOST'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['TOTAL_GOALS'] = tOTALGOALS;
    data['TOTAL_ASSIST'] = tOTALASSIST;
    data['GOAL_RATIO'] = gOALRATIO;
    data['MINUTES_PER_GOAL'] = mINUTESPERGOAL;
    data['TEAM_CONTRIBUTION_PERCENTAGE'] = tEAMCONTRIBUTIONPERCENTAGE;
    data['PENALTY_GOALS'] = pENALTYGOALS;
    data['PENALTY_MISSED'] = pENALTYMISSED;
    data['GOALS_INSIDE_BOX'] = gOALSINSIDEBOX;
    data['GOALS_OUTSIDE_BOX'] = gOALSOUTSIDEBOX;
    data['HEADED_GOALS'] = hEADEDGOALS;
    data['TOTAL_GOALS_AS_SUBSTITUTE'] = tOTALGOALSASSUBSTITUTE;
    data['WOODWORK'] = wOODWORK;
    data['TOTAL_SHOTS'] = tOTALSHOTS;
    data['SHOTS_ON_PER_GOAL'] = sHOTSONPERGOAL;
    data['TOTAL_BLOCKED_SHOTS'] = tOTALBLOCKEDSHOTS;
    data['KEY_PASSES'] = kEYPASSES;
    data['TOTAL_CROSSES'] = tOTALCROSSES;
    data['TOTAL_SUCCESSFUL_CROSSES'] = tOTALSUCCESSFULCROSSES;
    data['TOTAL_DIRECT_FREE_KICK'] = tOTALDIRECTFREEKICK;
    data['TOTAL_GOAL_ATTEMPTS'] = tOTALGOALATTEMPTS;
    data['OWN_GOALS'] = oWNGOALS;
    data['DEFENSIVE_ERROR'] = dEFENSIVEERROR;
    data['PENALTY_COMMIT'] = pENALTYCOMMIT;
    data['TOTAL_CLEARANCES'] = tOTALCLEARANCES;
    data['TOTAL_INTERCEPTED_CROSSES'] = tOTALINTERCEPTEDCROSSES;
    data['TOTAL_TACKLES'] = tOTALTACKLES;
    data['GOAL_CONCEDED'] = gOALCONCEDED;
    data['TOTAL_CLEAN_SHEETS'] = tOTALCLEANSHEETS;
    data['TOTAL_CLEAN_SHEETS_PERCENTAGE'] = tOTALCLEANSHEETSPERCENTAGE;
    data['KEEPER_SAVES'] = kEEPERSAVES;
    data['PENALTY_SAVES'] = pENALTYSAVES;
    data['SAVES_PER_GAME'] = sAVESPERGAME;
    data['SAVES_PERCENTAGE'] = sAVESPERCENTAGE;
    data['TOTAL_SHOTS_ALLOWED'] = tOTALSHOTSALLOWED;
    data['NO_CONCEDING_IN_ROW'] = nOCONCEDINGINROW;
    data['TOTAL_CARDS'] = tOTALCARDS;
    data['TOTAL_RED_CARDS'] = tOTALREDCARDS;
    data['TOTAL_YELLOW_CARDS'] = tOTALYELLOWCARDS;
    data['FOUL_COMMIT_PER_GAME'] = fOULCOMMITPERGAME;
    data['FOUL_SUFFERED'] = fOULSUFFERED;
    data['TOTAL_FOULS_COMMITTED'] = tOTALFOULSCOMMITTED;
    data['MINUTES_PLAYED'] = mINUTESPLAYED;
    data['TOTAL_STARTS'] = tOTALSTARTS;
    data['TOTAL_STARTS_PERCENTAGE'] = tOTALSTARTSPERCENTAGE;
    data['TOTAL_SUBSTITUTE_IN'] = tOTALSUBSTITUTEIN;
    data['TOTAL_OFFSIDES'] = tOTALOFFSIDES;
    data['TOTAL_AIR_CHALLENGES_WON'] = tOTALAIRCHALLENGESWON;
    data['TOTAL_AIR_CHALLENGES_LOST'] = tOTALAIRCHALLENGESLOST;
    return data;
  }
}
