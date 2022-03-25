import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/json/json.dart';
import 'package:instagram_clone/palette/colors.dart';
import 'package:instagram_clone/widgets/widgets.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const StoryAvatar(story: {
                    "id": 0,
                    "img": profile,
                    "name": 'Your Story',
                    "isViewed": false,
                  }),
                  ...stories
                      .map(
                        (story) => StoryAvatar(story: story),
                      )
                      .toList(),
                ],
              ),
            ),
            Divider(color: white.withOpacity(.21)),
            ...posts.map((post) => PostCard(post: post)).toList()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Instagram',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      ),
      elevation: 0,
      backgroundColor: appBarColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble_text),
        )
      ],
    );
  }
}
