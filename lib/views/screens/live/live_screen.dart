import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/live_controller.dart';
import 'package:live_football_score/views/screens/league/league_screen.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/match_card_widget.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final liveController = Get.put(LiveController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustomText(
            text: 'live'.tr,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        body: Obx(
          () => liveController.isLoading.value
              ? const Center(
                  child: CustomLoading(),
                )
              : ListView.builder(
                  itemCount: liveController.matches.length,
                  itemBuilder: (context, index) {
                    return StickyHeader(
                        header: InkWell(
                          onTap: () {
                            Get.to(() => const LeagueScreen(), arguments: {
                              "leagueId": liveController.matches[index].stId
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 35.h,
                            color: greyLeague,
                            padding: EdgeInsets.only(left: 10.w, right: 10.w),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomText(
                                    text:
                                        "${liveController.matches[index].cName} : ${liveController.matches[index].stName}",
                                    fontWeight: FontWeight.w500,
                                    maxLines: 2,
                                  ),
                                ),
                                CustomText(
                                    text:
                                        "${liveController.matches[index].matches?.length ?? 0}")
                              ],
                            ),
                          ),
                        ),
                        content: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                liveController.matches[index].matches?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index1) {
                              return Column(
                                children: [
                                  MatchCardWidget(
                                    matches: liveController
                                        .matches[index].matches?[index1],
                                  ),
                                  Visibility(
                                    visible: index1 !=
                                        (liveController.matches[index].matches
                                                    ?.length ??
                                                1) -
                                            1,
                                    child: Divider(
                                        height: 1.h,
                                        color: grey.withOpacity(0.3)),
                                  ),
                                ],
                              );
                            }));
                  }),
        ));
  }
}
