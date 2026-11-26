import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_text.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // The Profile tab is only an icon for now and has no page.
  static const int _profileTabIndex = 2;

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // The AppBar title changes with the tab that is open.
  Widget _buildTitle() {
    if (_selectedIndex == 1) {
      return CustomText(
        text: 'Notifications',
        fontSize: 22.sp,
        color: FB_DARK_PRIMARY,
        fontWeight: FontWeight.bold,
      );
    }
    return CustomText(
      text: APP_NAME.toLowerCase(),
      fontSize: 25.sp,
      color: FB_PRIMARY,
      fontFamily: 'Klavika',
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: _buildTitle(),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          NewsFeedScreen(),
          NotificationScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false, //unselected item
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: FB_PRIMARY,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    // Profile has no page yet, so tapping it does nothing.
    if (value == _profileTabIndex) return;

    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
