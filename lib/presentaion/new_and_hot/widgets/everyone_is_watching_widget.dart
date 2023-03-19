import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/new_and_hot/widgets/video_widget.dart';

import '../../home/widgets/custom_button_widget.dart';

class EveryOneIsWatchingWidget extends StatelessWidget {
  const EveryOneIsWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height,
        const Text(
          'FRIENDS',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        height,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfall of work, life and love in 1990s Manhattn",
          style: TextStyle(
            color: greycolor,
          ),
        ),
        height50,
        const VideoWidget(),
        height,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.share,
              text: 'Share',
              iconsize: 25,
              fontsize: 16,
            ),
            width,
            CustomButton(
              icon: Icons.add,
              text: 'My List',
              iconsize: 25,
              fontsize: 16,
            ),
            width,
            CustomButton(
              icon: Icons.play_arrow,
              text: 'Play',
              iconsize: 25,
              fontsize: 16,
            ),
            width
          ],
        )
      ],
    );
  }
}
