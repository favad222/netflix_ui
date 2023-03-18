import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/Search/search.dart';
import 'package:netflix_ui/presentaion/Search/widgets/searchtile.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtile(title: 'Top Searches'),
        height,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchViw(),
            separatorBuilder: (context, index) => height20,
            itemCount: 20,
          ),
        )
      ],
    );
  }
}

class TopSearchViw extends StatelessWidget {
  const TopSearchViw({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: width * 0.35,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Shazzam 2',
            style: TextStyle(color: whitecolor, fontWeight: FontWeight.bold),
          ),
        ),
        const CircleAvatar(
          backgroundColor: whitecolor,
          radius: 23,
          child: CircleAvatar(
            backgroundColor: blackcolor,
            radius: 20,
            child: Icon(
              CupertinoIcons.play_fill,
              color: whitecolor,
            ),
          ),
        )
      ],
    );
  }
}
