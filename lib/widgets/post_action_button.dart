import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class PostActionButton extends StatelessWidget {
  const PostActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: FB_DARK_PRIMARY, size: 20.sp),
          SizedBox(width: 4.w),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CustomText(
                text: label,
                fontSize: 12.sp,
                color: FB_DARK_PRIMARY,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
