import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/json/json.dart';
import 'package:instagram_clone/palette/colors.dart';

class CreatComment extends StatelessWidget {
  const CreatComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage(profile),
                  radius: 12,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration.collapsed(
                        hintText: 'Add a comment...',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Text('😂'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Text('😍'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              CupertinoIcons.add_circled,
              color: white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
