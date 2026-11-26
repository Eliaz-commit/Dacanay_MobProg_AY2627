import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Prefixed because Flutter already has its own class called Notification.
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  static const int _notificationCount = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      // ListView.separated only builds the rows that are on screen, so the
      // list can scroll instead of overflowing like a Column would.
      child: ListView.separated(
        itemCount: _notificationCount,
        itemBuilder: (context, index) {
          final number = index + 1;
          return notif.Notification(
            name: 'Test',
            post: 'Post $number',
            description: 'Description $number',
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1),
      ),
    );
  }
}
