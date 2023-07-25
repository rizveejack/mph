import 'package:flutter/material.dart';
import 'package:mph/screens/course_screen.dart';
import 'package:mph/screens/home_screen.dart';
import 'package:mph/screens/mycourse_screen.dart';
import 'package:mph/screens/myprofile_screen.dart';
import 'package:mph/screens/wishlist_screen.dart';

class MotherScreen extends StatefulWidget {
  const MotherScreen({super.key});

  @override
  State<MotherScreen> createState() => _MotherScreenState();
}

class _MotherScreenState extends State<MotherScreen> {
  int _currentPage = 0;
  List<StatelessWidget> _screens = [
    HomeScreen(),
    CourseScreen(),
    MyCourseScreen(),
    WishListScreen(),
    MyProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView.builder(
            physics: ScrollPhysics(
              parent: NeverScrollableScrollPhysics(),
            ),
            itemBuilder: (_, index) {
              return _screens[_currentPage];
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        currentIndex: _currentPage,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_outlined), label: "Course"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_outlined),
              label: "My course"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "My Profile"),
        ],
      ),
    );
  }
}
