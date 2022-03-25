import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/widgets.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.post}) : super(key: key);

  final Map post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostTile(
          profileImg: post['profileImg'],
          name: post['name'],
        ),
        const SizedBox(height: 4.0),
        Image.asset(
          post['postImg'],
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 4.0),
        ReactionButtons(isLoved: post['isLoved']),
        const SizedBox(height: 4.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                const TextSpan(text: 'Liked by  '),
                TextSpan(
                  text: post['likedBy'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                const TextSpan(text: '  and  '),
                const TextSpan(
                  text: 'others.',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post['likedBy'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                TextSpan(text: " ${post['caption']}."),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "View all ${post['commentCount']} comments.",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${post['timeAgo']}",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const CreatComment(),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
