import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_ui/core/sizedbox.dart';
import 'package:netflix_ui/presentaion/home/widgets/background_card.dart';
import 'package:netflix_ui/presentaion/home/widgets/number_card_tile.dart';
import 'package:netflix_ui/presentaion/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    height,
                    MainTitleCard(title: 'Released In the Past Year'),
                    height,
                    MainTitleCard(title: 'Trending Now'),
                    height,
                    NumberCardTile(),
                    height,
                    MainTitleCard(title: 'Teans Drama'),
                    height,
                    MainTitleCard(title: 'South Indian cenima'),
                    height
                  ],
                ),
                scrollnotifier.value == true
                    ? Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 60,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'https://cdn.icon-icons.com/icons2/2699/PNG/512/netflix_logo_icon_170919.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const Spacer(),
                                  width,
                                  const Icon(
                                    Icons.cast_connected,
                                    color: Colors.white,
                                  ),
                                  width,
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                  ),
                                  width
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Tv Shows',
                                    style: khometextstyle,
                                  ),
                                  Text(
                                    'Movies',
                                    style: khometextstyle,
                                  ),
                                  Text(
                                    'Categories',
                                    style: khometextstyle,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    : height
              ],
            ),
          );
        },
      ),
    );
  }
}
