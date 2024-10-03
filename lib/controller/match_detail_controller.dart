import 'package:get/get.dart';

import '../models/match_detail_model.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  final isLoading1 = false.obs;
  Rx<MatchDetailModel> matchDetail = MatchDetailModel().obs;
  final matchId = "".obs;
  final status = "".obs;

  // Rx<StandingModel> standing = StandingModel().obs;
  // Rx<Tables> table = Tables().obs;

  // Rx<H2HModel> h2hModel = H2HModel().obs;

  @override
  void onInit() {
    matchId.value = Get.arguments['matchId'];
    status.value = Get.arguments['status'];
    getMatchesDetail(matchId.value);
    super.onInit();
  }

  Future<void> getMatchesDetail(String matchID) async {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () async {
      try {
        final result = await ApiRepo().getMatchesDetail(matchID);
        matchDetail.value = result;
      } catch (e) {
        constants.showSnackBar(
            title: 'Error', msg: e.toString(), textColor: red);
      } finally {
        isLoading.value = false;
      }
    });
  }

  // Future<void> getStandings() async {
  //   isLoading1.value = true;
  //   try {
  //     final result =
  //         await ApiRepo().getStandings(matchDetailData.value.stId ?? '');
  //     standing.value = result;
  //     if ((standing.value.l?.tables ?? []).isNotEmpty) {
  //       if ((standing.value.l?.tables ?? [])
  //           .where((element) => element.code == 0)
  //           .toList()
  //           .isNotEmpty) {
  //         table.value = (standing.value.l?.tables ?? [])
  //             .where((element) => element.code == 0)
  //             .toList()[0];
  //       }
  //     }
  //   } catch (e) {
  //     constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
  //   } finally {
  //     isLoading1.value = false;
  //   }
  // }

  // Future<void> getH2H() async {
  //   isLoading1.value = true;
  //   try {
  //     final result = await ApiRepo().getH2H(
  //         (matchDetailData.value.teams ?? []).isNotEmpty
  //             ? (matchDetailData.value.teams?[0].id ?? '')
  //             : '',
  //         (matchDetailData.value.teams ?? []).length > 1
  //             ? (matchDetailData.value.teams?[1].id ?? '')
  //             : '');
  //     h2hModel.value = result;
  //   } catch (e) {
  //     constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
  //   } finally {
  //     isLoading1.value = false;
  //   }
  // }
}
