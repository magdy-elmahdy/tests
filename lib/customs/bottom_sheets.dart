import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery.of(context).size.height*0.5,
    return Container(
      height: MediaQuery.of(context).size.height*0.5,
      width: double.infinity,
      color: Colors.yellow,
    );
  }
}
