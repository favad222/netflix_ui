import 'package:flutter/material.dart';
import 'package:netflix_ui/core/sizedbox.dart';

class MainCard0 extends StatelessWidget {
  const MainCard0({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: kradias,
        image: const DecorationImage(
          image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7OOw0O03SY4cml8ZLP3UYCcDrgY.jpg'),
        ),
      ),
    );
  }
}
