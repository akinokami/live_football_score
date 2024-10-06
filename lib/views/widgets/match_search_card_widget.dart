import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/match_model.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/views/screens/match_detail/match_detail_screen.dart';
import 'package:live_football_score/views/widgets/custom_text.dart';
import 'package:live_football_score/views/widgets/show_hide_text.dart';

import '../../utils/function.dart';

class MatchSearchCardWidget extends StatelessWidget {
  final Matches? matches;
  const MatchSearchCardWidget({super.key, this.matches});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const MatchDetailScreen(), arguments: {
          "matchId": matches?.id,
        });
      },
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
                      // Image.network(
                      //   'https://api.snaptech.dev/logos/soccer/1/${matches?.teams?[0].id}/teamlogo.png',
                      //   width: 16.w,
                      // ),

                      // FastCachedImage(
                      //   width: 16.w,
                      //   url:
                      //       'https://api.snaptech.dev/logos/soccer/1/${matches?.teams?[0].id}/teamlogo.png',
                      //   fit: BoxFit.cover,
                      //   fadeInDuration: const Duration(seconds: 1),
                      //   errorBuilder: (context, exception, stacktrace) =>
                      //       SizedBox(
                      //           width: 16.w,
                      //           child: Icon(
                      //             Icons.sports_soccer,
                      //             color: secondaryColor,
                      //             size: 18.sp,
                      //           )),
                      //   loadingBuilder: (context, progress) {
                      //     return SizedBox(
                      //       width: 16.w,
                      //       child: Stack(
                      //         alignment: Alignment.center,
                      //         children: [
                      //           if (progress.isDownloading &&
                      //               progress.totalBytes != null)
                      //             SizedBox(
                      //                 width: 16.w,
                      //                 child: CircularProgressIndicator(
                      //                     color: Colors.green,
                      //                     value: progress
                      //                         .progressPercentage.value)),
                      //         ],
                      //       ),
                      //     );
                      //   },
                      // ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.w),
                        child: Image.network(
                          'https://api.snaptech.dev/logos/soccer/1/${matches?.teams?[0].id}/teamlogo.png',
                          width: 16.w,
                          height: 16.w,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                              width: 16.w,
                              height: 16.w,
                              child: Icon(
                                Icons.sports_soccer,
                                color: secondaryColor,
                                size: 18.sp,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: (matches?.teams ?? []).isNotEmpty
                            ? (matches?.teams?[0].name ?? '')
                            : '',
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[0] ?? 0) >
                                        (matches?.score?[1] ?? 0))
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
                      // FastCachedImage(
                      //   width: 16.w,
                      //   url:
                      //       'https://api.snaptech.dev/logos/soccer/1/${matches?.teams?[1].id}/teamlogo.png',
                      //   fit: BoxFit.cover,
                      //   fadeInDuration: const Duration(seconds: 1),
                      //   errorBuilder: (context, exception, stacktrace) =>
                      //       SizedBox(
                      //           width: 16.w,
                      //           child: Icon(
                      //             Icons.sports_soccer,
                      //             color: secondaryColor,
                      //             size: 18.sp,
                      //           )),
                      //   loadingBuilder: (context, progress) {
                      //     return SizedBox(
                      //       width: 16.w,
                      //       child: Stack(
                      //         alignment: Alignment.center,
                      //         children: [
                      //           if (progress.isDownloading &&
                      //               progress.totalBytes != null)
                      //             SizedBox(
                      //                 width: 16.w,
                      //                 child: CircularProgressIndicator(
                      //                     color: Colors.green,
                      //                     value: progress
                      //                         .progressPercentage.value)),
                      //         ],
                      //       ),
                      //     );
                      //   },
                      // ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.w),
                        child: Image.network(
                          'https://api.snaptech.dev/logos/soccer/1/${matches?.teams?[1].id}/teamlogo.png',
                          width: 16.w,
                          height: 16.w,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                              width: 16.w,
                              height: 16.w,
                              child: Icon(
                                Icons.sports_soccer,
                                color: secondaryColor,
                                size: 18.sp,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustomText(
                        text: (matches?.teams ?? []).length > 1
                            ? (matches?.teams?[1].name ?? '')
                            : '',
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[1] ?? 0) >
                                        (matches?.score?[0] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            matches?.status == 2 || matches?.status == 3
                ? ShowHideText(
                    text: matches?.statusTxt ?? '',
                  )
                : matches?.status == 10
                    ? CustomText(
                        text: matches?.statusTxt ?? '',
                        color: secondaryColor,
                      )
                    : matches?.status == 6
                        ? const CustomText(
                            text: 'FT',
                          )
                        : matches?.status == 17
                            ? const CustomText(
                                text: 'AB',
                              )
                            : CustomText(
                                text: matches?.statusTxt ?? '',
                              ),
            SizedBox(
              width: 15.w,
            ),
            matches?.status == 1
                ? CustomText(text: getTime("${matches?.start ?? 0}"))
                : Column(
                    children: [
                      CustomText(
                        text: (matches?.score ?? []).isNotEmpty
                            ? "${matches?.score?[0] ?? ''}"
                            : '',
                        color: matches?.status == 2 ||
                                matches?.status == 3 ||
                                matches?.status == 10
                            ? secondaryColor
                            : Colors.black,
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[0] ?? 0) >=
                                        (matches?.score?[1] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                      CustomText(
                        text: (matches?.teams ?? []).length > 1
                            ? "${matches?.score?[1] ?? ''}"
                            : '',
                        color: matches?.status == 2 ||
                                matches?.status == 3 ||
                                matches?.status == 10
                            ? secondaryColor
                            : Colors.black,
                        fontWeight: (matches?.score ?? []).length > 1
                            ? matches?.status == 6 &&
                                    ((matches?.score?[1] ?? 0) >=
                                        (matches?.score?[0] ?? 0))
                                ? FontWeight.bold
                                : FontWeight.normal
                            : FontWeight.normal,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
