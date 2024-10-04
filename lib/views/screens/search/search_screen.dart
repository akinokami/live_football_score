import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers.dart';
import '../../../controller/search_match_controller.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_loading.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/match_card_widget.dart';
import '../league/league_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = Get.put(SearchMatchController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: CustomText(
          text: 'search'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: CustomTextFormField(
              controller: searchController.searchTxtController,
              hintText: 'search'.tr,
              isValidate: false,
              onChange: (value) {
                searchController.searchMatch();
              },
            ),
          ),
          kSizedBoxH10,
          Obx(
            () => searchController.isLoading.value
                ? const Expanded(
                    child: Center(
                      child: CustomLoading(),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: searchController.searchMatches.length,
                        itemBuilder: (context, index) {
                          return StickyHeader(
                              header: InkWell(
                                onTap: () {
                                  Get.to(() => const LeagueScreen(),
                                      arguments: {
                                        "leagueId": searchController
                                            .searchMatches[index].stId
                                      });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  color: greyLeague,
                                  padding:
                                      EdgeInsets.only(left: 10.w, right: 10.w),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: CustomText(
                                          text:
                                              "${searchController.searchMatches[index].cName} : ${searchController.searchMatches[index].stName}",
                                          fontWeight: FontWeight.w500,
                                          maxLines: 2,
                                        ),
                                      ),
                                      CustomText(
                                          text:
                                              "${searchController.searchMatches[index].matches?.length ?? 0}")
                                    ],
                                  ),
                                ),
                              ),
                              content: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: searchController
                                      .searchMatches[index].matches?.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index1) {
                                    return Column(
                                      children: [
                                        MatchCardWidget(
                                          matches: searchController
                                              .searchMatches[index]
                                              .matches?[index1],
                                        ),
                                        Visibility(
                                          visible: index1 !=
                                              (searchController
                                                          .searchMatches[index]
                                                          .matches
                                                          ?.length ??
                                                      1) -
                                                  1,
                                          child: Divider(
                                              height: 1.h,
                                              color: grey.withOpacity(0.3)),
                                        ),
                                      ],
                                    );
                                  }));
                        }),
                  ),
          )
        ],
      ),
    );
  }
}
