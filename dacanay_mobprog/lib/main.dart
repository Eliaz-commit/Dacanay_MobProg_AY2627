import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import '/screens/home_screen.dart';
import '/screens/newsfeed_screen.dart';

void main() => runApp(const Elibook());

class Elibook extends StatelessWidget {
  const Elibook({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: APP_NAME,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: FB_PRIMARY),
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}
