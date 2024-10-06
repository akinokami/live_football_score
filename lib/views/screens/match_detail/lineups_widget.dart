import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/utils/function.dart';

import '../../../models/match_detail_model.dart';
import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';
import '../player/player_screen.dart';

class LineUpsWidget extends StatelessWidget {
  final String? home;
  final String? away;
  final List<Lineup>? lineup;
  const LineUpsWidget({super.key, this.home, this.away, this.lineup});

  @override
  Widget build(BuildContext context) {
    return (lineup ?? []).length <= 1
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView(
            children: [
              ///Lineups Form
              Container(
                height: 500.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/lineup.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.w),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: home ?? '',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 1)
                                    .toList()
                                    .firstOrNull,
                                isGoalKeeper: true,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 2)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 3)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 4)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 5)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 6)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 7)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 8)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 9)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 10)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[0]
                                    .starting
                                    ?.where((element) => element.aPos == 11)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 10)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 11)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 6)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 7)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 8)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 9)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 2)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 3)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 4)
                                    .toList()
                                    .firstOrNull,
                              ),
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 5)
                                    .toList()
                                    .firstOrNull,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LineUpPlayer(
                                lineupPerson: lineup?[1]
                                    .starting
                                    ?.where((element) => element.aPos == 1)
                                    .toList()
                                    .firstOrNull,
                                isGoalKeeper: true,
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Container(
                            padding: EdgeInsets.all(5.w),
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: away ?? '',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///Starting Lineups
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'starting_lineups'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kSizedBoxH10,
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[0].starting?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[0].starting?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[0].starting?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      kSizedBoxW5,
                                      Expanded(
                                        child: CustomText(
                                            text: lineup?[0]
                                                    .starting?[index]
                                                    .name ??
                                                ''),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[1].starting?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[1].starting?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: CustomText(
                                          text: lineup?[1]
                                                  .starting?[index]
                                                  .name ??
                                              '',
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      kSizedBoxW5,
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[1].starting?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  kSizedBoxH10,
                ],
              ),

              ///Substituted players
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'substituted_players'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kSizedBoxH10,
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[0].substitutes?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[0].substitutes?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[0].substitutes?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      kSizedBoxW5,
                                      Expanded(
                                        child: CustomText(
                                            text: lineup?[0]
                                                    .substitutes?[index]
                                                    .name ??
                                                ''),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[1].substitutes?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[1].substitutes?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: CustomText(
                                          text: lineup?[1]
                                                  .substitutes?[index]
                                                  .name ??
                                              '',
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      kSizedBoxW5,
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[1].substitutes?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  kSizedBoxH10,
                ],
              ),

              ///Injured
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'injured'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kSizedBoxH10,
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[0].injured?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[0].injured?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[0].injured?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      kSizedBoxW5,
                                      Expanded(
                                        child: CustomText(
                                            text: lineup?[0]
                                                    .injured?[index]
                                                    .name ??
                                                ''),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[1].injured?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[1].injured?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: CustomText(
                                          text:
                                              lineup?[1].injured?[index].name ??
                                                  '',
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      kSizedBoxW5,
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 1.sw * 0.07,
                                        child: CustomText(
                                          text:
                                              "${lineup?[1].injured?[index].jNum ?? ''}",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  kSizedBoxH10,
                ],
              ),

              ///Coach
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: greyLeague,
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: 'coach'.tr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kSizedBoxH10,
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[0].coaches?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[0].coaches?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                      kSizedBoxW5,
                                      Expanded(
                                        child: CustomText(
                                            text: lineup?[0]
                                                    .coaches?[index]
                                                    .name ??
                                                ''),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: lineup?[1].coaches?.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => const PlayerScreen(),
                                      arguments: {
                                        "playerId":
                                            lineup?[1].coaches?[index].id,
                                      });
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, bottom: 5.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: CustomText(
                                          text:
                                              lineup?[1].coaches?[index].name ??
                                                  '',
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      kSizedBoxW5,
                                      Icon(
                                        Icons.account_circle,
                                        size: 18.sp,
                                        color: secondaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  kSizedBoxH10,
                ],
              ),
            ],
          );
  }
}

class LineUpPlayer extends StatelessWidget {
  final LineupPerson? lineupPerson;
  final bool? isGoalKeeper;
  const LineUpPlayer({super.key, this.lineupPerson, this.isGoalKeeper});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 25.w,
          height: 25.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isGoalKeeper == true ? Colors.yellow : Colors.white,
              borderRadius: BorderRadius.circular(100.w)),
          child: CustomText(
            text: "${lineupPerson?.jNum ?? ''}",
            fontWeight: FontWeight.bold,
          ),
        ),
        kSizedBoxH5,
        Container(
          padding: EdgeInsets.only(left: 3.w, right: 3.w),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(100.w)),
          alignment: Alignment.center,
          child: CustomText(
            text: '${subStringAfterSpace(lineupPerson?.name ?? '')} ',
            color: Colors.white,
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
