import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageTextRow extends StatelessWidget {
  final String imagePath;
  final String text;

  // Constructor to receive the image path and text
  CustomImageTextRow({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom : 12.h,top: 12.h),
      child: Container(
        child: Row(
          children: [
            // Image from the passed path
            Image.asset(imagePath),
            SizedBox(width: 18.w),
            // Text displayed next to the image
            Text(
              text,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            // Arrow icon to the right
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
