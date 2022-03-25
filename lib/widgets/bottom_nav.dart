import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key, required this.index, required this.onTap})
      : super(key: key);

  final int index;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    List _bottomIcons = [
      index == 0 ? Icons.home_rounded : Icons.home_outlined,
      index == 1 ? CupertinoIcons.search : Icons.search,
      index == 2 ? CupertinoIcons.plus_app_fill : CupertinoIcons.plus_app,
      index == 3 ? Icons.favorite_rounded : Icons.favorite_outline,
      index == 4 ? Icons.person_rounded : Icons.person_outline,
    ];
    return TabBar(
        indicator: const BoxDecoration(border: null),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        onTap: onTap,
        tabs: _bottomIcons
            .map(
              (e) => Tab(
                child: Icon(
                  e,
                  size: 24,
                  color: white,
                ),
              ),
            )
            .toList());
  }
}
