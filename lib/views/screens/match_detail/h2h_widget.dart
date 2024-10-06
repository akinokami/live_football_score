import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/models/h2h_model.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class H2HWidget extends StatelessWidget {
  final H2HModel? h2hModel;
  const H2HWidget({super.key, this.h2hModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if ((h2hModel?.h2h?.matches ?? []).isNotEmpty)
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 35.h,
                color: greyLeague,
                padding: EdgeInsets.only(left: 10.w),
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: 'head_to_head_matches'.tr,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: h2hModel?.h2h?.matches?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Get.to(() => const MatchDetailScreen(), arguments: {
                          //   "matchId": h2hModel?.h2h?.matches?[index].id,
                          // });
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
                                        FastCachedImage(
                                          width: 16.w,
                                          url:
                                              'https://api.snaptech.dev/logos/soccer/1/${h2hModel?.h2h?.matches?[index].teams?[0].id}/teamlogo.png',
                                          fit: BoxFit.cover,
                                          fadeInDuration:
                                              const Duration(seconds: 1),
                                          errorBuilder: (context, exception,
                                                  stacktrace) =>
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
                                                      progress.totalBytes !=
                                                          null)
                                                    SizedBox(
                                                        width: 16.w,
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
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        CustomText(
                                          text: (h2hModel?.h2h?.matches?[index]
                                                          .teams ??
                                                      [])
                                                  .isNotEmpty
                                              ? (h2hModel?.h2h?.matches?[index]
                                                      .teams?[0].name ??
                                                  '')
                                              : '',
                                          fontWeight: (h2hModel
                                                              ?.h2h
                                                              ?.matches?[index]
                                                              .score ??
                                                          [])
                                                      .length >
                                                  1
                                              ? (h2hModel?.h2h?.matches?[index]
                                                              .status ==
                                                          6) &&
                                                      ((h2hModel
                                                                  ?.h2h
                                                                  ?.matches?[
                                                                      index]
                                                                  .score?[0] ??
                                                              0) >
                                                          (h2hModel
                                                                  ?.h2h
                                                                  ?.matches?[
                                                                      index]
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
                                              'https://api.snaptech.dev/logos/soccer/1/${h2hModel?.h2h?.matches?[index].teams?[1].id}/teamlogo.png',
                                          fit: BoxFit.cover,
                                          fadeInDuration:
                                              const Duration(seconds: 1),
                                          errorBuilder: (context, exception,
                                                  stacktrace) =>
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
                                                      progress.totalBytes !=
                                                          null)
                                                    SizedBox(
                                                        width: 16.w,
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
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        CustomText(
                                          text: (h2hModel?.h2h?.matches?[index]
                                                              .teams ??
                                                          [])
                                                      .length >
                                                  1
                                              ? (h2hModel?.h2h?.matches?[index]
                                                      .teams?[1].name ??
                                                  '')
                                              : '',
                                          fontWeight: (h2hModel
                                                              ?.h2h
                                                              ?.matches?[index]
                                                              .score ??
                                                          [])
                                                      .length >
                                                  1
                                              ? (h2hModel?.h2h?.matches?[index]
                                                              .status ==
                                                          6) &&
                                                      ((h2hModel
                                                                  ?.h2h
                                                                  ?.matches?[
                                                                      index]
                                                                  .score?[1] ??
                                                              0) >
                                                          (h2hModel
                                                                  ?.h2h
                                                                  ?.matches?[
                                                                      index]
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
                                    text: (h2hModel?.h2h?.matches?[index]
                                                    .score ??
                                                [])
                                            .isNotEmpty
                                        ? "${h2hModel?.h2h?.matches?[index].score?[0] ?? ''}"
                                        : '',
                                    color: Colors.black,
                                    fontWeight: (h2hModel?.h2h?.matches?[index]
                                                        .score ??
                                                    [])
                                                .length >
                                            1
                                        ? (h2hModel?.h2h?.matches?[index]
                                                        .status ==
                                                    6) &&
                                                ((h2hModel?.h2h?.matches?[index]
                                                            .score?[0] ??
                                                        0) >=
                                                    (h2hModel
                                                            ?.h2h
                                                            ?.matches?[index]
                                                            .score?[1] ??
                                                        0))
                                            ? FontWeight.bold
                                            : FontWeight.normal
                                        : FontWeight.normal,
                                  ),
                                  CustomText(
                                    text: (h2hModel?.h2h?.matches?[index]
                                                        .teams ??
                                                    [])
                                                .length >
                                            1
                                        ? "${h2hModel?.h2h?.matches?[index].score?[1] ?? ''}"
                                        : '',
                                    color: Colors.black,
                                    fontWeight: (h2hModel?.h2h?.matches?[index]
                                                        .score ??
                                                    [])
                                                .length >
                                            1
                                        ? (h2hModel?.h2h?.matches?[index]
                                                        .status ==
                                                    6) &&
                                                ((h2hModel?.h2h?.matches?[index]
                                                            .score?[1] ??
                                                        0) >=
                                                    (h2hModel
                                                            ?.h2h
                                                            ?.matches?[index]
                                                            .score?[0] ??
                                                        0))
                                            ? FontWeight.bold
                                            : FontWeight.normal
                                        : FontWeight.normal,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      if (index != (h2hModel?.h2h?.matches?.length ?? 0) - 1)
                        Divider(height: 1.h, color: grey.withOpacity(0.3)),
                    ],
                  );
                },
              ),
            ],
          ),
        if ((h2hModel?.teams ?? []).isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: (h2hModel?.teams ?? []).length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text:
                          "${'last_matches'.tr} : ${h2hModel?.teams?[index].name}",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: h2hModel?.teams?[index].matches?.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, matchIndex) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Get.to(() => const MatchDetailScreen(),
                              //     arguments: {
                              //       "matchId":
                              //           h2hModel?.h2h?.matches?[index].id,
                              //     });
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
                                            FastCachedImage(
                                              width: 16.w,
                                              url:
                                                  'https://api.snaptech.dev/logos/soccer/1/${h2hModel?.teams?[index].matches?[matchIndex].teams?[0].id}/teamlogo.png',
                                              fit: BoxFit.cover,
                                              fadeInDuration:
                                                  const Duration(seconds: 1),
                                              errorBuilder: (context, exception,
                                                      stacktrace) =>
                                                  SizedBox(
                                                      width: 16.w,
                                                      child: Icon(
                                                        Icons.sports_soccer,
                                                        color: secondaryColor,
                                                        size: 18.sp,
                                                      )),
                                              loadingBuilder:
                                                  (context, progress) {
                                                return SizedBox(
                                                  width: 16.w,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      if (progress
                                                              .isDownloading &&
                                                          progress.totalBytes !=
                                                              null)
                                                        SizedBox(
                                                            width: 16.w,
                                                            child: CircularProgressIndicator(
                                                                color: Colors
                                                                    .green,
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
                                              text: (h2hModel
                                                              ?.teams?[index]
                                                              .matches?[
                                                                  matchIndex]
                                                              .teams ??
                                                          [])
                                                      .isNotEmpty
                                                  ? (h2hModel
                                                          ?.teams?[index]
                                                          .matches?[matchIndex]
                                                          .teams?[0]
                                                          .name ??
                                                      '')
                                                  : '',
                                              fontWeight: (h2hModel
                                                                  ?.teams?[
                                                                      index]
                                                                  .matches?[
                                                                      matchIndex]
                                                                  .score ??
                                                              [])
                                                          .length >
                                                      1
                                                  ? (h2hModel
                                                                  ?.teams?[
                                                                      index]
                                                                  .matches?[
                                                                      matchIndex]
                                                                  .status ==
                                                              6) &&
                                                          ((h2hModel
                                                                          ?.teams?[
                                                                              index]
                                                                          .matches?[
                                                                              matchIndex]
                                                                          .score?[
                                                                      0] ??
                                                                  0) >
                                                              (h2hModel
                                                                      ?.teams?[
                                                                          index]
                                                                      .matches?[
                                                                          matchIndex]
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
                                                  'https://api.snaptech.dev/logos/soccer/1/${h2hModel?.teams?[index].matches?[matchIndex].teams?[1].id}/teamlogo.png',
                                              fit: BoxFit.cover,
                                              fadeInDuration:
                                                  const Duration(seconds: 1),
                                              errorBuilder: (context, exception,
                                                      stacktrace) =>
                                                  SizedBox(
                                                      width: 16.w,
                                                      child: Icon(
                                                        Icons.sports_soccer,
                                                        color: secondaryColor,
                                                        size: 18.sp,
                                                      )),
                                              loadingBuilder:
                                                  (context, progress) {
                                                return SizedBox(
                                                  width: 16.w,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      if (progress
                                                              .isDownloading &&
                                                          progress.totalBytes !=
                                                              null)
                                                        SizedBox(
                                                            width: 16.w,
                                                            child: CircularProgressIndicator(
                                                                color: Colors
                                                                    .green,
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
                                              text: (h2hModel
                                                                  ?.teams?[
                                                                      index]
                                                                  .matches?[
                                                                      matchIndex]
                                                                  .teams ??
                                                              [])
                                                          .length >
                                                      1
                                                  ? (h2hModel
                                                          ?.teams?[index]
                                                          .matches?[matchIndex]
                                                          .teams?[1]
                                                          .name ??
                                                      '')
                                                  : '',
                                              fontWeight: (h2hModel
                                                                  ?.teams?[
                                                                      index]
                                                                  .matches?[
                                                                      matchIndex]
                                                                  .score ??
                                                              [])
                                                          .length >
                                                      1
                                                  ? (h2hModel
                                                                  ?.teams?[
                                                                      index]
                                                                  .matches?[
                                                                      matchIndex]
                                                                  .status ==
                                                              6) &&
                                                          ((h2hModel
                                                                          ?.teams?[
                                                                              index]
                                                                          .matches?[
                                                                              matchIndex]
                                                                          .score?[
                                                                      1] ??
                                                                  0) >
                                                              (h2hModel
                                                                      ?.teams?[
                                                                          index]
                                                                      .matches?[
                                                                          matchIndex]
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
                                        text: (h2hModel
                                                        ?.teams?[index]
                                                        .matches?[matchIndex]
                                                        .score ??
                                                    [])
                                                .isNotEmpty
                                            ? "${h2hModel?.teams?[index].matches?[matchIndex].score?[0] ?? ''}"
                                            : '',
                                        color: Colors.black,
                                        fontWeight: (h2hModel
                                                            ?.teams?[index]
                                                            .matches?[
                                                                matchIndex]
                                                            .score ??
                                                        [])
                                                    .length >
                                                1
                                            ? (h2hModel
                                                            ?.teams?[index]
                                                            .matches?[
                                                                matchIndex]
                                                            .status ==
                                                        6) &&
                                                    ((h2hModel
                                                                ?.teams?[index]
                                                                .matches?[
                                                                    matchIndex]
                                                                .score?[0] ??
                                                            0) >=
                                                        (h2hModel
                                                                ?.teams?[index]
                                                                .matches?[
                                                                    matchIndex]
                                                                .score?[1] ??
                                                            0))
                                                ? FontWeight.bold
                                                : FontWeight.normal
                                            : FontWeight.normal,
                                      ),
                                      CustomText(
                                        text: (h2hModel
                                                            ?.teams?[index]
                                                            .matches?[
                                                                matchIndex]
                                                            .teams ??
                                                        [])
                                                    .length >
                                                1
                                            ? "${h2hModel?.teams?[index].matches?[matchIndex].score?[1] ?? ''}"
                                            : '',
                                        color: Colors.black,
                                        fontWeight: (h2hModel
                                                            ?.teams?[index]
                                                            .matches?[
                                                                matchIndex]
                                                            .score ??
                                                        [])
                                                    .length >
                                                1
                                            ? (h2hModel
                                                            ?.teams?[index]
                                                            .matches?[
                                                                matchIndex]
                                                            .status ==
                                                        6) &&
                                                    ((h2hModel
                                                                ?.teams?[index]
                                                                .matches?[
                                                                    matchIndex]
                                                                .score?[1] ??
                                                            0) >=
                                                        (h2hModel
                                                                ?.teams?[index]
                                                                .matches?[
                                                                    matchIndex]
                                                                .score?[0] ??
                                                            0))
                                                ? FontWeight.bold
                                                : FontWeight.normal
                                            : FontWeight.normal,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (matchIndex !=
                              (h2hModel?.teams?[index].matches?.length ?? 0) -
                                  1)
                            Divider(height: 1.h, color: grey.withOpacity(0.3)),
                        ],
                      );
                    },
                  ),
                ],
              );
            },
          ),
      ],
    );
  }
}
