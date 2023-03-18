import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final widgets = [
    const SmartDownloads(),
    height,
    Section2(),
    const Section3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return widgets[index];
        },
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: widgets.length,
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: whitecolor,
        ),
        width,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadImge extends StatelessWidget {
  const DownloadImge({
    super.key,
    required this.imageList,
    required this.margin,
    this.angle = 0,
    required this.size,
    this.radias = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radias;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radias),
            image: DecorationImage(
                image: NetworkImage(
                  imageList,
                ),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final imageList = [
    'https://www.themoviedb.org/t/p/original/zpCCTtuQMHiHycpsrWnW2eCrBql.jpg',
    'https://www.themoviedb.org/t/p/original/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg',
    'https://www.themoviedb.org/t/p/original/kuf6dutpsT0vSVehic3EZIqkOBt.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Indroducing New Downloads For you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whitecolor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          '''We Will Download personalized Selection\nof Movies and Shows for you,so there is\nalways something to watch on your\ndevice''',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        Container(
          height: size.width,
          width: size.width,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.30,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ),
              DownloadImge(
                imageList: imageList[2],
                margin: const EdgeInsets.only(left: 170, top: 50),
                angle: 15,
                size: Size(size.width * 0.30, size.width * 0.48),
              ),
              DownloadImge(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 170, top: 50),
                angle: -15,
                size: Size(size.width * 0.30, size.width * 0.48),
              ),
              DownloadImge(
                imageList: imageList[0],
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                size: Size(
                  size.width * 0.3,
                  size.width * 0.50,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: bluecolor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            child: const Text(
              'Set Up',
              style: TextStyle(color: whitecolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        height,
        MaterialButton(
          color: whitecolor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: const Text(
            'See What You Can Download',
            style: TextStyle(color: blackcolor, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}