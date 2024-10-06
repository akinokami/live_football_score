import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_football_score/controller/player_controller.dart';
import 'package:live_football_score/utils/color_const.dart';
import 'package:live_football_score/utils/dimen_const.dart';
import 'package:live_football_score/views/screens/player/player_career_widget.dart';
import 'package:live_football_score/views/screens/player/player_profile_widget.dart';
import 'package:live_football_score/views/screens/player/player_stats_widget.dart';
import 'package:live_football_score/views/widgets/custom_loading.dart';

import '../../widgets/custom_text.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final playerController = Get.put(PlayerController());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Obx(
          () => playerController.isLoading.value
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
                          //             playerController.player.value.name ?? '',
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
                                  Icons.account_circle,
                                  size: 40.sp,
                                  color: Colors.white,
                                ),
                                kSizedBoxH5,
                                CustomText(
                                  text:
                                      playerController.player.value.name ?? '',
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                kSizedBoxH3,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: (playerController
                                                      .player.value.teams ??
                                                  [])
                                              .isNotEmpty
                                          ? (playerController.player.value
                                                  .teams?[0].name ??
                                              '')
                                          : '',
                                      color: Colors.white,
                                    ),
                                    const CustomText(
                                      text: ' | ',
                                      color: Colors.white,
                                    ),
                                    CustomText(
                                      text: playerController.player.value.pos ==
                                              9
                                          ? 'Manager'
                                          : playerController.player.value.pos ==
                                                  4
                                              ? 'Forward'
                                              : playerController
                                                          .player.value.pos ==
                                                      3
                                                  ? 'Midfielder'
                                                  : playerController.player
                                                              .value.pos ==
                                                          2
                                                      ? 'Defender'
                                                      : playerController.player
                                                                  .value.pos ==
                                                              1
                                                          ? 'Goalkeeper'
                                                          : '',
                                      color: Colors.white,
                                    ),
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
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              indicator: BoxDecoration(
                                color: secondaryColor,
                              ),
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.white,
                              tabs: [
                                Tab(text: 'profile'.tr),
                                Tab(text: 'career'.tr),
                                Tab(text: 'stats'.tr),
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
                      PlayerProfileWidget(
                        playerModel: playerController.player.value,
                      ),
                      PlayerCareerWidget(
                        teams: playerController.player.value.teams ?? [],
                      ),
                      PlayerStatsWidget(
                        stats: playerController.player.value.stats ?? [],
                      )
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
