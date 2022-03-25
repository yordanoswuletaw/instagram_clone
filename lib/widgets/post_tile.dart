import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key? key,
    required this.profileImg,
    required this.name,
  }) : super(key: key);

  final String profileImg, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(profileImg),
                ),
                const SizedBox(width: 8.0),
                Flexible(
                  flex: 1,
                  child: Text(
                    name,
                    style: const TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis),
                  ),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              splashColor: Colors.transparent,
              icon: const Icon(
                Icons.more_horiz_rounded,
                color: white,
                size: 24,
              ))
        ],
      ),
    );
  }
}
