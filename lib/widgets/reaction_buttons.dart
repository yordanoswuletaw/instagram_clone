import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';

class ReactionButtons extends StatelessWidget {
  const ReactionButtons({
    Key? key,
    required this.isLoved,
  }) : super(key: key);

  final bool isLoved;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: IconButton(
                  onPressed: () {},
                  icon: isLoved
                      ? const Icon(
                          Icons.favorite_rounded,
                          color: Colors.redAccent,
                        )
                      : const Icon(
                          Icons.favorite_outline,
                          color: white,
                        ),
                ),
              ),
              WidgetSpan(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.chat_bubble,
                    color: white,
                  ),
                ),
              ),
              WidgetSpan(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_rounded,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bookmark,
                color: white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
