import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';
import 'post_action_button.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final String? avatarUrl;
  final String? imageUrl;
  final int numOfLikes;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    required this.date,
    this.avatarUrl,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile and username
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _avatar(20.r, 15.sp),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Optional post image
            if (imageUrl != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    imageUrl!,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    // If the photo cannot load, show Flutter's Placeholder box.
                    errorBuilder: (context, error, stackTrace) {
                      return const Placeholder(
                        color: FB_SECONDARY,
                        strokeWidth: 1.5,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
            ],

            // Like, Comment, and Share buttons
            Row(
              children: [
                Expanded(
                  child: PostActionButton(
                    onPressed: () {
                      debugPrint('Liked');
                    },
                    icon: Icons.thumb_up,
                    label: numOfLikes.toString(),
                  ),
                ),
                Expanded(
                  child: PostActionButton(
                    onPressed: () {},
                    icon: Icons.comment,
                    label: 'Comment',
                  ),
                ),
                Expanded(
                  child: PostActionButton(
                    onPressed: () {},
                    icon: Icons.redo,
                    label: 'Share',
                  ),
                ),
              ],
            ),

            // Comment field without profile avatar
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setSp(10),
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(32),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(16)),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),

            // View comments
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _avatar(double radius, double fontSize) {
    final initial = userName.trim().isEmpty
        ? '?'
        : userName.trim()[0].toUpperCase();
    return CircleAvatar(
      radius: radius,
      backgroundColor: FB_LIGHT_PRIMARY,
      foregroundImage: avatarUrl == null ? null : NetworkImage(avatarUrl!),
      child: Text(
        initial,
        style: TextStyle(
          color: FB_DARK_PRIMARY,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
