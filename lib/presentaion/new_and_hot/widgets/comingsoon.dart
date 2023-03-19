import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix_ui/presentaion/new_and_hot/widgets/video_widget.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }
}

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 16,
                  color: greycolor,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                children: [
                  const Text(
                    'BANSHEE',
                    style: TextStyle(
                      letterSpacing: -3,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    icon: Icons.all_out_sharp,
                    text: 'Remind Me',
                    iconsize: 20,
                    fontsize: 12,
                  ),
                  width,
                  CustomButton(
                    icon: Icons.info_outline_rounded,
                    text: 'Info',
                    iconsize: 20,
                    fontsize: 12,
                  ),
                  width
                ],
              ),
              height,
              const Text('Coming On Friday'),
              height,
              const Text(
                'BANSHEE',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              height,
              const Text(
                "Landing the lead in the school musical is a dream come true for jodi,until the pressure sends her confidence - and her relationship - into a tailspain",
                style: TextStyle(
                  color: greycolor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
