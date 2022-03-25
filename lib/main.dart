import 'package:flutter/material.dart';

import 'screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: RootScreen(),
    );
  }
}

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

int _initialIndex = 0;

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        const NavScreen(),
        ChatRoom(
          callBack: () => setState(() {
            _initialIndex = 0;
          }),
        ),
      ],
    );
  }
}
