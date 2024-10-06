import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/match_detail_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/match_detail/h2h_widget.dart';
import 'package:live_football_score/views/screens/match_detail/info_widget.dart';
import 'package:live_football_score/views/screens/match_detail/lineups_widget.dart';
import 'package:live_football_score/views/screens/match_detail/play_by_play_widget.dart';
import 'package:live_football_score/views/screens/match_detail/stats_widget.dart';
import 'package:live_football_score/views/screens/team/team_screen.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../../utils/function.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/show_hide_text.dart';
import '../league/league_table_widget.dart';
import '../league/league_top_scorers_widget.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        body: Obx(
          () => matchDetailController.isLoading.value
              ? const Center(
                  child: CustomLoading(),
                )
              : NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        expandedHeight: 150.h,
                        floating: false,
                        pinned: true,
                        backgroundColor: appBarColor,
                        iconTheme: const IconThemeData(color: Colors.white),
                        flexibleSpace: FlexibleSpaceBar(
                          // title: innerBoxIsScrolled
                          //     ? CustomText(
                          //         text:
                          //             "${matchDetailController.matchDetail.value.cName ?? ''} - ${matchDetailController.matchDetail.value.stName ?? ''}",
                          //         color: Colors.white,
                          //         fontWeight: FontWeight.w600,
                          //         fontSize: 15.sp,
                          //       )
                          //     : null,
                          // centerTitle: true,
                          background: Container(
                            color: appBarColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                kSizedBoxH15,
                                CustomText(
                                  text:
                                      "${matchDetailController.matchDetail.value.cName ?? ''} - ${matchDetailController.matchDetail.value.stName ?? ''}",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                ),
                                kSizedBoxH15,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => const TeamScreen(),
                                            arguments: {
                                              'teamId': (matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .teams ??
                                                          [])
                                                      .isNotEmpty
                                                  ? (matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .teams?[0]
                                                          .id ??
                                                      '0')
                                                  : '0'
                                            });
                                      },
                                      child: SizedBox(
                                        width: 1.sw * 0.25,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.sports_soccer,
                                              color: Colors.white,
                                              size: 35.sp,
                                            ),
                                            kSizedBoxH3,
                                            CustomText(
                                              text: (matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .teams ??
                                                          [])
                                                      .isNotEmpty
                                                  ? (matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .teams?[0]
                                                          .name ??
                                                      '')
                                                  : '',
                                              color: Colors.white,
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              fontWeight: ((matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .score ??
                                                              [])
                                                          .length >
                                                      1)
                                                  ? (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .status ==
                                                              6) &&
                                                          ((matchDetailController
                                                                          .matchDetail
                                                                          .value
                                                                          .score?[
                                                                      0] ??
                                                                  0) >
                                                              (matchDetailController
                                                                      .matchDetail
                                                                      .value
                                                                      .score?[1] ??
                                                                  0))
                                                      ? FontWeight.bold
                                                      : FontWeight.normal
                                                  : FontWeight.normal,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        CustomText(
                                          text: getMatchDate(
                                              "${matchDetailController.matchDetail.value.start ?? ''}"),
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                        ),
                                        Row(
                                          children: [
                                            CustomText(
                                              text: matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .status ==
                                                      1
                                                  ? ''
                                                  : (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .score ??
                                                              [])
                                                          .isNotEmpty
                                                      ? "${matchDetailController.matchDetail.value.score?[0] ?? 0}"
                                                      : '0',
                                              color: matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          2 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          3 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          10
                                                  ? secondaryColor
                                                  : Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            CustomText(
                                              text: ' - ',
                                              color: matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          2 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          3 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          10
                                                  ? secondaryColor
                                                  : Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            CustomText(
                                              text: matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .status ==
                                                      1
                                                  ? ''
                                                  : (matchDetailController
                                                                      .matchDetail
                                                                      .value
                                                                      .score ??
                                                                  [])
                                                              .length >
                                                          1
                                                      ? "${matchDetailController.matchDetail.value.score?[1] ?? 0}"
                                                      : '0',
                                              color: matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          2 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          3 ||
                                                      matchDetailController
                                                              .matchDetail
                                                              .value
                                                              .status ==
                                                          10
                                                  ? secondaryColor
                                                  : Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        // CustomText(
                                        //   text: matchDetailController
                                        //           .matchDetail
                                        //           .value
                                        //           .statusTxt ??
                                        //       '',
                                        //   color: Colors.white,
                                        // ),
                                        matchDetailController
                                                    .matchDetail.value.status ==
                                                2
                                            ? Row(
                                                children: [
                                                  CustomText(
                                                    text: '1st Half - ',
                                                    color: secondaryColor,
                                                  ),
                                                  ShowHideText(
                                                    text: matchDetailController
                                                            .matchDetail
                                                            .value
                                                            .statusTxt ??
                                                        '',
                                                  ),
                                                ],
                                              )
                                            : matchDetailController.matchDetail
                                                        .value.status ==
                                                    3
                                                ? Row(
                                                    children: [
                                                      CustomText(
                                                        text: '2nd Half - ',
                                                        color: secondaryColor,
                                                      ),
                                                      ShowHideText(
                                                        text:
                                                            matchDetailController
                                                                    .matchDetail
                                                                    .value
                                                                    .statusTxt ??
                                                                '',
                                                      ),
                                                    ],
                                                  )
                                                : matchDetailController
                                                            .matchDetail
                                                            .value
                                                            .status ==
                                                        10
                                                    ? CustomText(
                                                        text:
                                                            matchDetailController
                                                                    .matchDetail
                                                                    .value
                                                                    .statusTxt ??
                                                                '',
                                                        color: secondaryColor,
                                                      )
                                                    : matchDetailController
                                                                .matchDetail
                                                                .value
                                                                .status ==
                                                            6
                                                        ? const CustomText(
                                                            text: 'Finished',
                                                            color: Colors.white,
                                                          )
                                                        : matchDetailController
                                                                    .matchDetail
                                                                    .value
                                                                    .status ==
                                                                17
                                                            ? const CustomText(
                                                                text:
                                                                    'Abandoned',
                                                                color: Colors
                                                                    .white,
                                                              )
                                                            : CustomText(
                                                                text: matchDetailController
                                                                        .matchDetail
                                                                        .value
                                                                        .statusTxt ??
                                                                    '',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => const TeamScreen(),
                                            arguments: {
                                              'teamId': (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .teams ??
                                                              [])
                                                          .length >
                                                      1
                                                  ? (matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .teams?[1]
                                                          .id ??
                                                      '0')
                                                  : '0'
                                            });
                                      },
                                      child: SizedBox(
                                        width: 1.sw * 0.25,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.sports_soccer,
                                              color: Colors.white,
                                              size: 35.sp,
                                            ),
                                            kSizedBoxH3,
                                            CustomText(
                                              text: (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .teams ??
                                                              [])
                                                          .length >
                                                      1
                                                  ? (matchDetailController
                                                          .matchDetail
                                                          .value
                                                          .teams?[1]
                                                          .name ??
                                                      '')
                                                  : '',
                                              color: Colors.white,
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              fontWeight: ((matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .score ??
                                                              [])
                                                          .length >
                                                      1)
                                                  ? (matchDetailController
                                                                  .matchDetail
                                                                  .value
                                                                  .status ==
                                                              6) &&
                                                          ((matchDetailController
                                                                          .matchDetail
                                                                          .value
                                                                          .score?[
                                                                      1] ??
                                                                  0) >
                                                              (matchDetailController
                                                                      .matchDetail
                                                                      .value
                                                                      .score?[0] ??
                                                                  0))
                                                      ? FontWeight.bold
                                                      : FontWeight.normal
                                                  : FontWeight.normal,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SliverPersistentHeader(
                        delegate: _SliverAppBarDelegate(
                          PreferredSize(
                            preferredSize: Size.fromHeight(30.h),
                            child: TabBar(
                              onTap: (int value) {
                                if (value == 3) {
                                  matchDetailController.getStandings();
                                }
                                if (value == 4) {
                                  matchDetailController.getH2H();
                                }
                                if (value == 6) {
                                  matchDetailController.getTopScorers();
                                }
                              },
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                color: secondaryColor,
                              ),
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.white,
                              tabs: [
                                Tab(text: 'info'.tr),
                                Tab(text: 'stats'.tr),
                                Tab(text: 'play_by_play'.tr),
                                Tab(text: 'table'.tr),
                                Tab(text: 'h2h'.tr),
                                Tab(text: 'lineups'.tr),
                                Tab(text: 'top_scorers'.tr),
                              ],
                            ),
                          ),
                        ),
                        pinned: true,
                      ),
                    ];
                  },
                  body: Obx(
                    () => matchDetailController.isLoading1.value
                        ? const Center(
                            child: CustomLoading(),
                          )
                        : TabBarView(
                            children: [
                              InfoWidget(
                                matchDetailModel:
                                    matchDetailController.matchDetail.value,
                              ),
                              StatsWidget(
                                stats: matchDetailController
                                    .matchDetail.value.stats,
                              ),
                              PlayByPlayWidget(
                                comms: matchDetailController
                                    .matchDetail.value.comms,
                              ),
                              LeagueTableWidget(
                                tables: matchDetailController.table.value,
                                homeId: (matchDetailController
                                                .matchDetail.value.teams ??
                                            [])
                                        .isNotEmpty
                                    ? (matchDetailController
                                            .matchDetail.value.teams?[0].id ??
                                        '')
                                    : '',
                                awayId: (matchDetailController
                                                    .matchDetail.value.teams ??
                                                [])
                                            .length >
                                        1
                                    ? (matchDetailController
                                            .matchDetail.value.teams?[1].id ??
                                        '')
                                    : '',
                              ),
                              H2HWidget(
                                h2hModel: matchDetailController.h2hModel.value,
                              ),
                              LineUpsWidget(
                                lineup: matchDetailController
                                    .matchDetail.value.lineup,
                              ),
                              LeagueTopScorersWidget(
                                t: matchDetailController.t,
                              ),
                            ],
                          ),
                  ),
                ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: tabColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
