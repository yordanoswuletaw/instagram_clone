import 'package:flutter/material.dart';
import 'package:instagram_clone/json/json.dart';
import 'package:instagram_clone/palette/colors.dart';
import 'package:instagram_clone/widgets/widgets.dart';

class SearchRoute extends StatelessWidget {
  const SearchRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 8.0),
              SearchField(size: size),
              const SizedBox(height: 14.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: searchCategories
                        .map((category) => searchCategory(category))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 14.0),
              Wrap(
                spacing: 1,
                runSpacing: 1,
                children: List.generate(
                  searchImages.length,
                  (index) => Container(
                    width: (size.width - 3) / 3,
                    height: (size.width - 3) / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(searchImages[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container searchCategory(String category) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: white.withOpacity(.3),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        category,
        style: const TextStyle(
          color: white,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
