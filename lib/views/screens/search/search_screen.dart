
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
import '../../widgets/match_search_card_widget.dart';
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
                                        child: Row(
                                          children: [
                                            // ClipRRect(
                                            //   borderRadius:
                                            //       BorderRadius.circular(100.w),
                                            //   child: FastCachedImage(
                                            //     width: 16.w,
                                            //     height: 16.w,
                                            //     url:
                                            //         'https://api.snaptech.dev/flags/2/${searchController.searchMatches[index].cId}/4x3.png',
                                            //     fit: BoxFit.cover,
                                            //     fadeInDuration:
                                            //         const Duration(seconds: 1),
                                            //     errorBuilder: (context,
                                            //             exception,
                                            //             stacktrace) =>
                                            //         SizedBox(
                                            //             width: 16.w,
                                            //             height: 16.w,
                                            //             child: Icon(
                                            //               Icons.sports_soccer,
                                            //               color: secondaryColor,
                                            //               size: 18.sp,
                                            //             )),
                                            //     loadingBuilder:
                                            //         (context, progress) {
                                            //       return SizedBox(
                                            //         width: 16.w,
                                            //         height: 16.w,
                                            //         child: Stack(
                                            //           alignment:
                                            //               Alignment.center,
                                            //           children: [
                                            //             if (progress
                                            //                     .isDownloading &&
                                            //                 progress.totalBytes !=
                                            //                     null)
                                            //               SizedBox(
                                            //                   width: 16.w,
                                            //                   height: 16.w,
                                            //                   child: CircularProgressIndicator(
                                            //                       color: Colors
                                            //                           .green,
                                            //                       value: progress
                                            //                           .progressPercentage
                                            //                           .value)),
                                            //           ],
                                            //         ),
                                            //       );
                                            //     },
                                            //   ),
                                            // ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100.w),
                                              child: Image.network(
                                                'https://api.snaptech.dev/flags/2/${searchController.searchMatches[index].cId}/4x3.png',
                                                width: 16.w,
                                                height: 16.w,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
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
                                                // loadingBuilder: (context, child,
                                                //     loadingProgress) {
                                                //   return SizedBox(
                                                //     width: 16.w,
                                                //     height: 16.w,
                                                //     child: Icon(
                                                //       Icons.sports_soccer,
                                                //       color: secondaryColor,
                                                //       size: 18.sp,
                                                //     ),
                                                //   );
                                                // },
                                              ),
                                            ),
                                            kSizedBoxW10,
                                            Expanded(
                                              child: CustomText(
                                                text:
                                                    "${searchController.searchMatches[index].cName} : ${searchController.searchMatches[index].stName}",
                                                fontWeight: FontWeight.w500,
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
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
                                        MatchSearchCardWidget(
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
