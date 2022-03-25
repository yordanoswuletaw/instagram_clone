import 'package:flutter/material.dart';
import 'package:instagram_clone/palette/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          alignment: Alignment.center,
          width: size.width - 20,
          height: 40,
          decoration: BoxDecoration(
            color: textFieldBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            cursorColor: white.withOpacity(.5),
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: white.withOpacity(.5),
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: white.withOpacity(.5)),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
