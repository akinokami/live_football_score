import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/league_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/league/league_table_widget.dart';
import 'package:live_football_score/views/screens/league/league_tandp_widget.dart';
import 'package:live_football_score/views/screens/league/league_top_scorers_widget.dart';
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
                          // title: innerBoxIsScrolled
                          //     ? CustomText(
                          //         text:
                          //             leagueController.league.value.cName ?? '',
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
                                // Icon(
                                //   Icons.sports_soccer,
                                //   size: 40.sp,
                                //   color: Colors.white,
                                // ),

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.w),
                                  child: FastCachedImage(
                                    width: 35.w,
                                    height: 35.w,
                                    url:
                                        'https://api.snaptech.dev/flags/2/${leagueController.league.value.cId}/4x3.png',
                                    fit: BoxFit.cover,
                                    fadeInDuration: const Duration(seconds: 1),
                                    errorBuilder:
                                        (context, exception, stacktrace) =>
                                            SizedBox(
                                                width: 35.w,
                                                height: 35.w,
                                                child: Icon(
                                                  Icons.sports_soccer,
                                                  color: Colors.white,
                                                  size: 35.sp,
                                                )),
                                    loadingBuilder: (context, progress) {
                                      return SizedBox(
                                        width: 35.w,
                                        height: 35.w,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            if (progress.isDownloading &&
                                                progress.totalBytes != null)
                                              SizedBox(
                                                  width: 35.w,
                                                  height: 35.w,
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
                              onTap: (int value) {
                                if (value == 1) {
                                  leagueController.getTopScorers();
                                }
                              },
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
                  body: Obx(
                    () => leagueController.isLoading1.value
                        ? const Center(
                            child: CustomLoading(),
                          )
                        : TabBarView(
                            children: [
                              (leagueController.league.value.l?.tables ?? [])
                                      .isEmpty
                                  ? Center(
                                      child: CustomText(text: 'no_data'.tr),
                                    )
                                  : LeagueTableWidget(
                                      tables: leagueController.table.value,
                                    ),
                              LeagueTopScorersWidget(
                                t: leagueController.t,
                              ),
                              LeagueTandPWidget(
                                type: 'p',
                                estats:
                                    leagueController.league.value.epstats ?? [],
                              ),
                              LeagueTandPWidget(
                                type: 't',
                                estats:
                                    leagueController.league.value.estats ?? [],
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
