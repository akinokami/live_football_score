import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/score_controller.dart';
import 'package:live_football_score/views/screens/league/league_screen.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_text.dart';

class LeagueListScreen extends StatelessWidget {
  const LeagueListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoreController = Get.find<ScoreController>();
    return Scaffold(
      backgroundColor: greyLeague,
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
          : Padding(
              padding: EdgeInsets.all(5.w),
              child: ListView.builder(
                  itemCount: scoreController.matches.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => const LeagueScreen(), arguments: {
                          "leagueId": scoreController.matches[index].stId
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.h),
                        width: double.infinity,
                        color: Colors.white,
                        // padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        padding: EdgeInsets.all(10.w),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100.w),
                                    child: FastCachedImage(
                                      width: 16.w,
                                      height: 16.w,
                                      url:
                                          'https://api.snaptech.dev/flags/2/${scoreController.matches[index].cId}/4x3.png',
                                      fit: BoxFit.cover,
                                      fadeInDuration:
                                          const Duration(seconds: 1),
                                      errorBuilder:
                                          (context, exception, stacktrace) =>
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
                                                  progress.totalBytes != null)
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
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18.sp,
                            )
                          ],
                        ),
                      ),
                      //  CustomCard(
                      //     widget: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Expanded(
                      //       child: CustomText(
                      //         text:
                      //             "${scoreController.matches[index].cName ?? ''} : ${scoreController.matches[index].stName ?? ''}",
                      //         isEllip: true,
                      //       ),
                      //     ),
                      //     Icon(
                      //       Icons.arrow_forward_ios,
                      //       size: 18.sp,
                      //     )
                      //   ],
                      // )),
                    );
                  }),
            )),
    );
  }
}
