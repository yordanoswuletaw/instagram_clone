import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';
import 'package:instagram_clone/routes/routes.dart';
import 'package:instagram_clone/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    HomeRoute(),
    SearchRoute(),
    PostRoute(),
    ActivityRoute(),
    ProfileRoute(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        backgroundColor: appFooterColor,
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNav(
            index: _selectedIndex,
            onTap: (index) => setState(() {
                  _selectedIndex = index;
                })),
      ),
      length: _screens.length,
      initialIndex: _selectedIndex,
    );
  }
}
