import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/score_controller.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/league/league_screen.dart';
import 'package:live_football_score/views/screens/search/search_screen.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/match_card_widget.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoreController = Get.put(ScoreController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Obx(
            () => CustomText(
              text: "${'score'.tr} - ${scoreController.startDate}",
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                Get.to(() => const SearchScreen(), arguments: {
                  'matches': scoreController.matches,
                });
              },
              icon: Icon(
                Icons.search,
                color: secondaryColor,
              ),
            ),
            IconButton(
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: scoreController.selectedDate.value,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (picked != null &&
                    picked != scoreController.selectedDate.value) {
                  scoreController.setDate(picked);
                }
              },
              icon: Icon(
                Icons.calendar_month,
                color: secondaryColor,
              ),
            ),
          ],
        ),
        body: Obx(
          () => scoreController.isLoading.value
              ? const Center(
                  child: CustomLoading(),
                )
              : ListView.builder(
                  itemCount: scoreController.matches.length,
                  itemBuilder: (context, index) {
                    return StickyHeader(
                        header: InkWell(
                          onTap: () {
                            Get.to(() => const LeagueScreen(), arguments: {
                              "leagueId": scoreController.matches[index].stId
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
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.w),
                                        child: FastCachedImage(
                                          width: 16.w,
                                          height: 16.w,
                                          url:
                                              'https://api.snaptech.dev/flags/2/${scoreController.matches[index].cId}/4x3.png',
                                          fit: BoxFit.cover,
                                          fadeInDuration:
                                              const Duration(seconds: 1),
                                          errorBuilder: (context, exception,
                                                  stacktrace) =>
                                              SizedBox(
                                                  width: 16.w,
                                                  height: 16.w,
                                                  child: Icon(
                                                    Icons.sports_soccer,
                                                    color: secondaryColor,
                                                    size: 18.sp,
                                                  )),
                                          loadingBuilder: (context, progress) {
                                            return SizedBox(
                                              width: 16.w,
                                              height: 16.w,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  if (progress.isDownloading &&
                                                      progress.totalBytes !=
                                                          null)
                                                    SizedBox(
                                                        width: 16.w,
                                                        height: 16.w,
                                                        child: CircularProgressIndicator(
                                                            color: Colors.green,
                                                            value: progress
                                                                .progressPercentage
                                                                .value)),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      kSizedBoxW10,
                                      Expanded(
                                        child: CustomText(
                                          text:
                                              "${scoreController.matches[index].cName} : ${scoreController.matches[index].stName}",
                                          fontWeight: FontWeight.w500,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomText(
                                    text:
                                        "${scoreController.matches[index].matches?.length ?? 0}")
                              ],
                            ),
                          ),
                        ),
                        content: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                scoreController.matches[index].matches?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index1) {
                              return Column(
                                children: [
                                  MatchCardWidget(
                                    matches: scoreController
                                        .matches[index].matches?[index1],
                                  ),
                                  Visibility(
                                    visible: index1 !=
                                        (scoreController.matches[index].matches
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
        )
        // ListView.builder(
        //     itemCount: 5,
        //     itemBuilder: (context, index) {
        //       return Column(
        //         children: [
        //           Container(
        //             width: double.infinity,
        //             height: 35.h,
        //             color: greyLeague,
        //             padding: EdgeInsets.only(left: 10.w),
        //             alignment: Alignment.centerLeft,
        //             child: CustomText(text: 'EPL'),
        //           ),
        //           ListView.builder(
        //               shrinkWrap: true,
        //               itemCount: 3,
        //               physics: const NeverScrollableScrollPhysics(),
        //               itemBuilder: (context, index1) {
        //                 return Column(
        //                   children: [
        //                     MatchCardWidget(),
        //                     Visibility(
        //                       visible: index1 != (3) - 1,
        //                       child: Divider(
        //                           height: 1.h, color: grey.withOpacity(0.3)),
        //                     ),
        //                   ],
        //                 );
        //               })
        //         ],
        //       );
        //     }),
        );
  }
}
