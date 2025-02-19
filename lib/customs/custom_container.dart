import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  // Constructor to receive the image path, title, and description
  CustomContainer({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          border: Border.all(
            color: Color(0xFFF1F1F1), // Border color
            width: 1, // Border width
          ),
        ),
        height: 90.h,
        width: 358.w,
        child: Row(
          children: [
            SizedBox(width: 12.w),
            Image.asset(imagePath,width: 45.w,height: 45.h,), // Using the passed image path
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Text(
                  title, // Using the passed title
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h),
                Text(
                  description, // Using the passed description
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios),
            SizedBox(width: 12.w),
          ],
        ),
      ),
    );
  }
}
