import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/team_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/team/team_info_widget.dart';
import 'package:live_football_score/views/screens/team/team_player_widget.dart';
import 'package:live_football_score/views/screens/team/team_results_widget.dart';
import 'package:live_football_score/views/screens/team/team_squad_widget.dart';
import 'package:live_football_score/views/screens/team/team_upcoming_widget.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../widgets/custom_text.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final teamController = Get.put(TeamController());
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Obx(
          () => teamController.isLoading.value
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
                          //         text: teamController.team.value.name ?? '',
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
                                kSizedBoxH30,
                                Icon(
                                  Icons.sports_soccer,
                                  size: 40.sp,
                                  color: Colors.white,
                                ),
                                kSizedBoxH5,
                                CustomText(
                                  text: teamController.team.value.name ?? '',
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
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
                                Tab(text: 'upcoming'.tr),
                                Tab(text: 'results'.tr),
                                Tab(text: 'squad'.tr),
                                Tab(
                                  text: 'player_stats'.tr,
                                )
                              ],
                            ),
                          ),
                        ),
                        pinned: true,
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      TeamInfoWidget(
                        stages: teamController.team.value.stages ?? [],
                      ),
                      TeamUpcomingWidget(
                        fixtures: teamController.team.value.fixtures,
                      ),
                      TeamResultsWidget(
                        results: teamController.team.value.results,
                      ),
                      teamController.players.isEmpty &&
                              teamController.coach.isEmpty
                          ? Center(
                              child: CustomText(text: 'no_data'.tr),
                            )
                          : TeamSquadWidget(
                              players: teamController.players,
                              coach: teamController.coach,
                            ),
                      (teamController.team.value.epstats?.stages ?? []).isEmpty
                          ? Center(
                              child: CustomText(text: 'no_data'.tr),
                            )
                          : TeamPlayerWidget(
                              epStages:
                                  teamController.team.value.epstats?.stages?[0],
                            ),
                    ],
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
