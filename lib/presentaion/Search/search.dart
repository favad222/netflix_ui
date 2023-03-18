import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/Search/widgets/search_idle.dart';
import 'package:netflix_ui/presentaion/Search/widgets/search_rs.dart';

const imageurl = 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/wybmSmviUXxlBmX44gtpow5Y9TB.jpg';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              height,
              // const Expanded(child: SearchIdle())
               const Expanded(child: SearchResult())
            ],
          ),
        ),
      ),
    );
  }
}


