import 'package:alkan_app/customs/custom_container.dart';
import 'package:alkan_app/utils/app_assets.dart';
import 'package:alkan_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TypesTab extends StatelessWidget {
  const TypesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.primary,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(AppAssets.background,width: double.infinity, fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 45.h),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${AppLocalizations.of(context)!.hi} Ahmed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 4.h,),
                        Text(AppLocalizations.of(context)!.good_Morning,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),

                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.alkanLogo,  width: 60.w,  // Set the desired width
                      height: 60.h, )// Set the desired heigh),
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.78,
                width: double.infinity,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 24.h,),
                      Text(AppLocalizations.of(context)!.select_insurance_type,style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16.h,),
                      CustomContainer(
                        imagePath: AppAssets.home_type,
                        title: AppLocalizations.of(context)!.home,
                        description: AppLocalizations.of(context)!.protect_your_home,
                      ),
                      CustomContainer(
                        imagePath: AppAssets.car_type,
                        title: AppLocalizations.of(context)!.car,
                        description: AppLocalizations.of(context)!.quick_car,
                      ),
                      CustomContainer(
                        imagePath: AppAssets.health_type,
                        title: AppLocalizations.of(context)!.health,
                        description: AppLocalizations.of(context)!.easy_health_coverage,
                      ),
                      CustomContainer(
                        imagePath: AppAssets.personal_type,
                        title: AppLocalizations.of(context)!.personal_accident,
                        description: AppLocalizations.of(context)!.quick_personal,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
