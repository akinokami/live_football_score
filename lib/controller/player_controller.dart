import 'package:get/get.dart';
import 'package:live_football_score/models/player_model.dart';

import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class PlayerController extends GetxController {
  final isLoading = false.obs;
  Rx<PlayerModel> player = PlayerModel().obs;
  final playerId = ''.obs;

  @override
  void onInit() {
    playerId.value = Get.arguments['playerId'];
    getPlayer();
    super.onInit();
  }

  Future<void> getPlayer() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getPlayer(playerId.value);
      player.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
