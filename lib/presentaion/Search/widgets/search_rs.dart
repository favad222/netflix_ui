import 'package:flutter/material.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/Search/search.dart';

import 'package:netflix_ui/presentaion/Search/widgets/searchtile.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  final imgaeurl =
      'https://www.themoviedb.org/t/p/original/zpCCTtuQMHiHycpsrWnW2eCrBql.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtile(title: 'Movies & TV'),
        height,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate(20, (index) => const MainCard()),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(7)),
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          )),
    );
  }
}
