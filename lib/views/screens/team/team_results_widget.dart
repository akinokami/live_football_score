import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/team_model.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';
import '../league/league_screen.dart';

class TeamResultsWidget extends StatelessWidget {
  final List<Results>? results;
  const TeamResultsWidget({super.key, this.results});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.builder(
          itemCount: results?.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const LeagueScreen(), arguments: {
                      "leagueId": results?[index].stId,
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text:
                          "${results?[index].cName} : ${results?[index].stName}",
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     // Get.to(() => const MatchDetailScreen(), arguments: {
                //     //   "matchId": matches?.id,
                //     //   'status': (matches?.status ?? 0) == 6
                //     //       ? 'FT'
                //     //       : (matches?.status ?? 0) == 17
                //     //           ? 'Abandoned'
                //     //           : (matches?.status ?? 0) == 1
                //     //               ? getTime("${matches?.start ?? ''}")
                //     //               : (matches?.statusTxt ?? ''),
                //     // });
                //   },
                //   child: Padding(
                //     padding: EdgeInsets.all(10.w),
                //     child: Column(
                //       children: [
                //         Row(
                //           children: [
                //             Icon(
                //               Icons.sports_soccer,
                //               size: 18.sp,
                //               color: secondaryColor,
                //             ),
                //             SizedBox(
                //               width: 10.w,
                //             ),
                //             CustomText(
                //               text: (results?[index].teams ?? []).isNotEmpty
                //                   ? (results?[index].teams?[0].name ?? '')
                //                   : '',
                //             ),
                //           ],
                //         ),
                //         Row(
                //           children: [
                //             Icon(
                //               Icons.sports_soccer,
                //               size: 18.sp,
                //               color: secondaryColor,
                //             ),
                //             SizedBox(
                //               width: 10.w,
                //             ),
                //             CustomText(
                //               text: (results?[index].teams ?? []).length > 1
                //                   ? (results?[index].teams?[1].name ?? '')
                //                   : '',
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // )
                InkWell(
                  onTap: null,
                  // onTap: () {
                  //   Get.to(() => const MatchDetailScreen(), arguments: {
                  //     "matchId": results?[index].id,
                  //   });
                  // },
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // Icon(
                                  //   Icons.sports_soccer,
                                  //   size: 18.sp,
                                  //   color: secondaryColor,
                                  // ),
                                  FastCachedImage(
                                    width: 16.w,
                                    url:
                                        'https://api.snaptech.dev/logos/soccer/1/${results?[index].teams?[0].id}/teamlogo.png',
                                    fit: BoxFit.cover,
                                    fadeInDuration: const Duration(seconds: 1),
                                    errorBuilder:
                                        (context, exception, stacktrace) =>
                                            SizedBox(
                                                width: 16.w,
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 18.sp,
                                                )),
                                    loadingBuilder: (context, progress) {
                                      return SizedBox(
                                        width: 16.w,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            if (progress.isDownloading &&
                                                progress.totalBytes != null)
                                              SizedBox(
                                                  width: 16.w,
                                                  child:
                                                      CircularProgressIndicator(
                                                          color: Colors.green,
                                                          value: progress
                                                              .progressPercentage
                                                              .value)),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    text: (results?[index].teams ?? [])
                                            .isNotEmpty
                                        ? (results?[index].teams?[0].name ?? '')
                                        : '',
                                    fontWeight:
                                        (results?[index].score ?? []).length > 1
                                            ? (results?[index].status == 6) &&
                                                    ((results?[index]
                                                                .score?[0] ??
                                                            0) >
                                                        (results?[index]
                                                                .score?[1] ??
                                                            0))
                                                ? FontWeight.bold
                                                : FontWeight.normal
                                            : FontWeight.normal,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // Icon(
                                  //   Icons.sports_soccer,
                                  //   size: 18.sp,
                                  //   color: secondaryColor,
                                  // ),
                                  FastCachedImage(
                                    width: 16.w,
                                    url:
                                        'https://api.snaptech.dev/logos/soccer/1/${results?[index].teams?[1].id}/teamlogo.png',
                                    fit: BoxFit.cover,
                                    fadeInDuration: const Duration(seconds: 1),
                                    errorBuilder:
                                        (context, exception, stacktrace) =>
                                            SizedBox(
                                                width: 16.w,
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: secondaryColor,
                                                  size: 18.sp,
                                                )),
                                    loadingBuilder: (context, progress) {
                                      return SizedBox(
                                        width: 16.w,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            if (progress.isDownloading &&
                                                progress.totalBytes != null)
                                              SizedBox(
                                                  width: 16.w,
                                                  child:
                                                      CircularProgressIndicator(
                                                          color: Colors.green,
                                                          value: progress
                                                              .progressPercentage
                                                              .value)),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    text: (results?[index].teams ?? []).length >
                                            1
                                        ? (results?[index].teams?[1].name ?? '')
                                        : '',
                                    fontWeight:
                                        (results?[index].score ?? []).length > 1
                                            ? (results?[index].status == 6) &&
                                                    ((results?[index]
                                                                .score?[1] ??
                                                            0) >
                                                        (results?[index]
                                                                .score?[0] ??
                                                            0))
                                                ? FontWeight.bold
                                                : FontWeight.normal
                                            : FontWeight.normal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const CustomText(
                          text: 'FT',
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: (results?[index].score ?? []).isNotEmpty
                                  ? "${results?[index].score?[0] ?? ''}"
                                  : '',
                              color: Colors.black,
                              fontWeight: (results?[index].score ?? []).length >
                                      1
                                  ? (results?[index].status == 6) &&
                                          ((results?[index].score?[0] ?? 0) >=
                                              (results?[index].score?[1] ?? 0))
                                      ? FontWeight.bold
                                      : FontWeight.normal
                                  : FontWeight.normal,
                            ),
                            CustomText(
                              text: (results?[index].teams ?? []).length > 1
                                  ? "${results?[index].score?[1] ?? ''}"
                                  : '',
                              color: Colors.black,
                              fontWeight: (results?[index].score ?? []).length >
                                      1
                                  ? (results?[index].status == 6) &&
                                          ((results?[index].score?[1] ?? 0) >=
                                              (results?[index].score?[0] ?? 0))
                                      ? FontWeight.bold
                                      : FontWeight.normal
                                  : FontWeight.normal,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
