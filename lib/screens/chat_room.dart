import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/json/json.dart';
import 'package:instagram_clone/palette/colors.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key, required this.callBack}) : super(key: key);

  final Function() callBack;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: black,
          leading: IconButton(
            onPressed: callBack,
            icon: const Icon(
              Icons.arrow_back,
              color: white,
            ),
          ),
          title: const Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.videocam,
                size: 34,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.text_bubble,
                size: 24,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: white,
            indicatorWeight: 1.1,
            overlayColor:
                MaterialStateProperty.all(Colors.white.withOpacity(.7)),
            tabs: const [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Rooms',
              ),
              Tab(
                text: 'Requests',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Text('chats'),
            Text('rooms'),
            Text('requests'),
          ],
        ),
      ),
    );
  }
}
