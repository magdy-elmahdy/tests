import 'package:alkan_app/customs/bottom_sheets.dart';
import 'package:alkan_app/customs/custom_image_text_row.dart';
import 'package:alkan_app/utils/app_assets.dart';
import 'package:alkan_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoreTab extends StatefulWidget {
  const MoreTab({super.key});

  @override
  State<MoreTab> createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(  // Add SafeArea here to prevent overflow
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(AppAssets.background, width: double.infinity, fit: BoxFit.fill),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildHeader(),
                  SizedBox(height: 15.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r),
                      ),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 36.h),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (_) => Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: AddBottomSheet(),
                                ),
                              );
                            },
                            child: CustomImageTextRow(
                              imagePath: AppAssets.our_insuranc_services_icon,
                              text: AppLocalizations.of(context)!.our_Insurance_Services,
                            ),
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          CustomImageTextRow(
                            imagePath: AppAssets.about_us_icon,
                            text: AppLocalizations.of(context)!.about_us,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          CustomImageTextRow(
                            imagePath: AppAssets.call_us_icon,
                            text: AppLocalizations.of(context)!.call_us,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          SizedBox(height: 20.h),
                          Text(
                            AppLocalizations.of(context)!.settings,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.sp),
                          ),
                          SizedBox(height: 16.h),
                          CustomImageTextRow(
                            imagePath: AppAssets.edit_my_account_icon,
                            text: AppLocalizations.of(context)!.edit_my_account,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          CustomImageTextRow(
                            imagePath: AppAssets.app_language_icon,
                            text: AppLocalizations.of(context)!.app_language,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          CustomImageTextRow(
                            imagePath: AppAssets.terms_conditions_icon,
                            text: AppLocalizations.of(context)!.terms_conditions,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          CustomImageTextRow(
                            imagePath: AppAssets.logout_icon,
                            text: AppLocalizations.of(context)!.log_out,
                          ),
                          Divider(color: AppColors.grey, thickness: 1),
                          Center(
                            child: Text(
                              AppLocalizations.of(context)!.version_3_11_5,
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 65.h),
          Image.asset(AppAssets.dummy_profile_pic, width: 40.w, height: 40.h),
          SizedBox(height: 8.h),
          Text(
            "Mahmoud Ahmed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: Colors.white),
          ),
          SizedBox(height: 8.h),
          Text(
            "010123456565",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
