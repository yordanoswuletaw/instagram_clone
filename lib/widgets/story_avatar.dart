import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({
    Key? key,
    required this.story,
    this.isPorfile = false,
  }) : super(key: key);

  final Map story;
  final bool isPorfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: story['id'] == 0 ? 61 : 64,
          height: story['id'] == 0 ? 61 : 64,
          margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
          padding: story['id'] == 0
              ? const EdgeInsets.all(0.0)
              : const EdgeInsets.all(1.7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: story['isViewed']
                  ? [Colors.grey, Colors.grey.withOpacity(.5)]
                  : storyBorderColor,
            ),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: black),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(story['img']), fit: BoxFit.cover),
                ),
              ),
              if (story['id'] == 0)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: buttonFollowColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: black, width: 1.3),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: white,
                      size: 14,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          width: 65,
          alignment: Alignment.center,
          child: Text(
            '\n${story['name']}',
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: white,
              fontWeight: FontWeight.w400,
              height: .7,
              fontSize: 12.0,
            ),
          ),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}
