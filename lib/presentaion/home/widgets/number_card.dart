import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/sizedbox.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: kradias,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bD22gfzZiYQWuRTX2NrdDveRpwX.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -20,
          left: 13,
          child: BorderedText(
            strokeWidth: 3,
            strokeColor: whitecolor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                color: blackcolor,
                fontSize: 100,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: blackcolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
