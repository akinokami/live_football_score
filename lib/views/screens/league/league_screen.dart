import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/league_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../widgets/custom_text.dart';

class LeagueScreen extends StatelessWidget {
  const LeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final leagueController = Get.put(LeagueController());
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Obx(
          () => leagueController.isLoading.value
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
                                      leagueController.league.value.cName ?? '',
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
                                kSizedBoxH30,
                                Icon(
                                  Icons.sports_soccer,
                                  size: 40.sp,
                                  color: Colors.white,
                                ),
                                kSizedBoxH5,
                                CustomText(
                                  text:
                                      leagueController.league.value.cName ?? '',
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                kSizedBoxH5,
                                CustomText(
                                  text: leagueController.league.value.stName ??
                                      '',
                                  color: Colors.white,
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
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                color: secondaryColor,
                              ),
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.white,
                              tabs: [
                                Tab(text: 'table'.tr),
                                Tab(text: 'top_scorers'.tr),
                                Tab(text: 'player_stats'.tr),
                                Tab(text: 'team_stats'.tr),
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
                      Center(child: Text('Info Page')),
                      Center(child: Text('Matches Page')),
                      Center(child: Text('Players Page')),
                      Center(child: Text('Players Page')),
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
