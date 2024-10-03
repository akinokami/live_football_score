import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/match_detail_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/match_detail/info_widget.dart';
import 'package:live_football_score/views/screens/match_detail/play_by_play_widget.dart';
import 'package:live_football_score/views/screens/team/team_screen.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../../utils/function.dart';
import '../../widgets/custom_text.dart';
import '../league/league_top_scorers_widget.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());
    return DefaultTabController(
      length: 6,
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
                          title: innerBoxIsScrolled
                              ? CustomText(
                                  text:
                                      "${matchDetailController.matchDetail.value.cName ?? ''} - ${matchDetailController.matchDetail.value.stName ?? ''}",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                )
                              : null,
                          centerTitle: true,
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
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        CustomText(
                                            text: getTime(
                                                "${matchDetailController.matchDetail.value.start ?? ''}"),
                                            color: Colors.white),
                                        Row(
                                          children: [
                                            CustomText(
                                              text: matchDetailController
                                                  .matchDetail.value.ftScore?[0]
                                                  .toString(),
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            CustomText(
                                              text: ' - ',
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            CustomText(
                                              text: matchDetailController
                                                  .matchDetail.value.ftScore?[1]
                                                  .toString(),
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        (matchDetailController.matchDetail.value
                                                        .ftScore ??
                                                    [])
                                                .isNotEmpty
                                            ? CustomText(
                                                text: matchDetailController
                                                    .status.value,
                                                color: Colors.white,
                                              )
                                            : Container(),
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
                                if (value == 5) {
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
                                Tab(text: 'play_by_play'.tr),
                                Tab(text: 'table'.tr),
                                Tab(text: 'h2h'.tr),
                                Tab(text: 'stats'.tr),
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
                              PlayByPlayWidget(
                                comms: matchDetailController
                                    .matchDetail.value.comms,
                              ),
                              Center(child: Text('Info Page')),
                              Center(child: Text('Matches Page')),
                              Center(child: Text('Players Page')),
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
