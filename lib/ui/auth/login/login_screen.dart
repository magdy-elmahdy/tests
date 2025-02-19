import 'package:alkan_app/ui/auth/register/register_screen.dart';
import 'package:alkan_app/ui/home_screen.dart';
import 'package:alkan_app/utils/app_assets.dart';
import 'package:alkan_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  bool isPhoneButtonEnabled = false;
  bool isOtpButtonEnabled = false;
  bool showOtpScreen = false;

  void onPhoneTextChanged(String text) {
    setState(() {
      isPhoneButtonEnabled = text.length == 11; // Enable button if input is 11 characters
    });
  }

  void onOtpTextChanged(String text) {
    setState(() {
      isOtpButtonEnabled = text.length == 4; // Enable button if input is 4 characters
    });
  }

  void onContinuePressed() {
    setState(() {
      showOtpScreen = true; // Show OTP screen inside the same container
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:AppColors.primary,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(AppAssets.background,width: double.infinity, fit: BoxFit.fill),
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(),  // Call the method here
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: double.infinity ,
                      ),
                      Padding(padding:  EdgeInsets.symmetric(horizontal: 24.h),
                        child: showOtpScreen ? buildOtpScreen() : buildPhoneNumberScreen() ,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
  Widget buildHeader() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0.h,  // Top padding scaled based on screen size
        bottom: 16.0.h,  // Top padding scaled based on screen size
        left: 20.0.w,  // Left padding scaled based on screen width
        right: 20.0.w, // Right padding scaled based on screen width
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.alkanLogo),
          SizedBox(height: 8.h),
          Text(AppLocalizations.of(context)!.ensure_your,
              style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.bold)),
          SizedBox(height: 8.h),
          Container(color: Color(0xFFBBBBBB), height: 2.h, width: 59.w),
          SizedBox(height: 16.h),
          Text(AppLocalizations.of(context)!.get_started, style: TextStyle(color: Colors.white,fontSize: 28.sp,fontWeight: FontWeight.bold)),
          SizedBox(height: 12.h),
          Text(AppLocalizations.of(context)!.please_Login, style: TextStyle(color: Colors.white,fontSize: 14.sp  )),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
  Widget buildPhoneNumberScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Text(
           AppLocalizations.of(context)!.phone_number,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
         SizedBox(height: 8.h),
        TextField(
          controller: phoneController,
          keyboardType: TextInputType.phone,
          onChanged: onPhoneTextChanged,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.enter_your_phone,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 12.h,
            ),
          ),
        ),
         SizedBox(height: 24.h),
        SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: isPhoneButtonEnabled ? onContinuePressed : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isPhoneButtonEnabled ? AppColors.primary : AppColors.grey ,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child:  Text(
              AppLocalizations.of(context)!.cont,
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ),
         SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.dont_have_an_account, style: TextStyle(color: Colors.black, fontSize: 14.sp)),
            SizedBox(width: 10.w,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
              },
              child: Text(
                AppLocalizations.of(context)!.register_now,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
  Widget buildOtpScreen() {
    return Column(
      children: [
         Text(
           AppLocalizations.of(context)!.sent_an_SMS,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
         SizedBox(height: 10.h),
        Text(
          "${AppLocalizations.of(context)!.enter_the_security_code}\n+32 123456789",
          textAlign: TextAlign.center,
        ),
         SizedBox(height: 20.h),
        Pinput(
          controller: otpController,
          length: 4,
          keyboardType: TextInputType.number,
          mainAxisAlignment: MainAxisAlignment.center,
          onChanged: onOtpTextChanged, // Check when OTP is fully entered
        ),
         SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.didnt_get_the_code,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(width: 5.w),
            Icon(Icons.timer, size: 16.sp, color: Colors.grey),
            SizedBox(width: 5.w),
            Text(
              "45s",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: isOtpButtonEnabled ? () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            } : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isOtpButtonEnabled ? AppColors.primary : AppColors.grey,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child:  Text(
              AppLocalizations.of(context)!.cont,
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ),
      ],
    );
  }

}
