import 'package:live_football_score/models/h2h_model.dart';
import 'package:live_football_score/models/league_model.dart';
import 'package:live_football_score/models/match_model.dart';
import 'package:live_football_score/models/player_model.dart';
import 'package:live_football_score/models/t.dart';
import 'package:live_football_score/models/table_model.dart';
import 'package:live_football_score/services/api_utils.dart';

import '../models/match_detail_model.dart';
import '../models/team_model.dart';
import '../utils/custom_exception.dart';
import 'api_constant.dart';

class ApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  ///Matches
  Future<List<MatchModel>> getMatches(String startDate, String endDate) async {
    try {
      final response = await apiUtils.get(
          url:
              "${ApiConstant.baseUrl3}en/matches/soccer/from/${startDate}T16:00:00/to/${endDate}T15:59:59",
          queryParameters: {
            "oddsPresentationConfigsId": "BETWAY_AFRICA_APP_PLAIN_1X2_V2",
            "oddsProviderIds": 11
          });

      final matches = response.data['matches'] as List;
      return matches.map((item) => MatchModel.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Lives
  Future<List<MatchModel>> getLives() async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/matches/soccer/live",
          queryParameters: {
            "oddsPresentationConfigsId": "BETWAY_AFRICA_APP_PLAIN_1X2_V2",
            "oddsProviderIds": 11
          });
      if (response.data == "[]") {
        return [];
      }
      final matches = response.data as List;
      return matches.map((item) => MatchModel.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Matches Detail
  Future<MatchDetailModel> getMatchesDetail(String matchID) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/match/soccer/full/$matchID",
          queryParameters: {
            "oddsPresentationConfigsId": "BETWAY_AFRICA_APP_PLAIN_1X2_V2",
            "oddsProviderIds": 11,
            "boxscore": 1,
            "bttm": 1,
            "estats": 1,
            "gl": 1,
            "pbp": 1,
            "tf": 1,
            "tlge": 1,
            "wh2h": 1,
            "wstats": 1,
            "wtops": 1
          });
      final matchDetail = response.data;
      return MatchDetailModel.fromJson(matchDetail);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<TableModel> getStandings(String stId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/stage/lg/soccer/$stId");
      if (response.data == "{}") {
        return TableModel();
      }
      final tm = response.data;
      return TableModel.fromJson(tm);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<H2HModel> getH2H(String teamAId, String teamBId) async {
    try {
      final response = await apiUtils.get(
          url:
              "${ApiConstant.baseUrl1}en/match/h2h/soccer/1/$teamAId/$teamBId");
      final matchDetail = response.data;
      return H2HModel.fromJson(matchDetail);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Team
  Future<TeamModel> getTeam(String teamId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/team/soccer/teampage/$teamId",
          queryParameters: {
            "oddsPresentationConfigsId": "BETWAY_AFRICA_APP_PLAIN_1X2_V2",
            "oddsProviderIds": 11,
            "epstats": 1
          });
      final team = response.data;
      return TeamModel.fromJson(team);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///League
  Future<LeagueModel> getLeague(String leagueId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/stage/soccer/$leagueId",
          queryParameters: {
            "oddsPresentationConfigsId": "BETWAY_AFRICA_APP_PLAIN_1X2_V2",
            "oddsProviderIds": 11,
            "eForm": 1,
            "epstats": 1,
            "eStats": 1
          });
      if (response.data == "{}") {
        return LeagueModel();
      }
      final team = response.data;
      return LeagueModel.fromJson(team);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Top Scorers
  Future<List<T>> getTopScorers(String leagueId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/stage/ts/soccer/$leagueId");
      if (response.data == "{}") {
        return [];
      }
      final t = response.data['T'] as List;
      return t.map((item) => T.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Player
  Future<PlayerModel> getPlayer(String playerId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl1}en/player/soccer/profile/$playerId");
      final player = response.data;
      return PlayerModel.fromJson(player);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
