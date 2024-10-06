import 'package:get/get.dart';
import 'package:live_football_score/models/league_model.dart';
import 'package:live_football_score/models/t.dart';

import '../models/table_model.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class LeagueController extends GetxController {
  final isLoading = false.obs;
  final isLoading1 = false.obs;
  final leagueId = ''.obs;
  Rx<LeagueModel> league = LeagueModel().obs;
  RxList<T> t = <T>[].obs;
  Rx<Tables> table = Tables().obs;

  @override
  void onInit() {
    leagueId.value = Get.arguments['leagueId'];
    getLeague();
    super.onInit();
  }

  Future<void> getLeague() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getLeague(leagueId.value);
      league.value = result;

      if ((league.value.l?.tables ?? []).isNotEmpty) {
        if ((league.value.l?.tables ?? [])
            .where((element) => element.code == 0)
            .toList()
            .isNotEmpty) {
          table.value = (league.value.l?.tables ?? [])
              .where((element) => element.code == 0)
              .toList()[0];
        }
      }
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getTopScorers() async {
    isLoading1.value = true;
    try {
      final result = await ApiRepo().getTopScorers(leagueId.value);
      t.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading1.value = false;
    }
  }
}
