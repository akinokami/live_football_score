import 'package:get/get.dart';
import 'package:live_football_score/models/league_model.dart';

import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class LeagueController extends GetxController {
  final isLoading = false.obs;
  final leagueId = ''.obs;
  Rx<LeagueModel> league = LeagueModel().obs;

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
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
