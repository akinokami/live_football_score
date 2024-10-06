import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/score_controller.dart';
import 'package:live_football_score/views/screens/league/league_screen.dart';
import 'package:live_football_score/views/widgets/custom_card.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../widgets/custom_text.dart';

class LeagueListScreen extends StatelessWidget {
  const LeagueListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoreController = Get.find<ScoreController>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomText(
          text: 'league'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(() => scoreController.isLoading.value
          ? const Center(
              child: CustomLoading(),
            )
          : ListView.builder(
              itemCount: scoreController.matches.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => const LeagueScreen(), arguments: {
                      "leagueId": scoreController.matches[index].stId
                    });
                  },
                  child: CustomCard(
                      widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomText(
                          text:
                              "${scoreController.matches[index].cName ?? ''} : ${scoreController.matches[index].stName ?? ''}",
                          isEllip: true,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18.sp,
                      )
                    ],
                  )),
                );
              })),
    );
  }
}
