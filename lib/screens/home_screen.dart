import 'package:flutter/material.dart';
import 'package:music_app/data.dart';
import 'package:music_app/widgets/discover_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  AppData data = AppData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Discover',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffff6f61),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 30, 0),
            child: const Icon(
              Icons.align_horizontal_left_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  color: Color(0xffff6f61),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              CarouselSlider.builder(
                  itemCount: data.discoverData.length,
                  itemBuilder: (context, index, index2) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 40),
                      child: DiscoverCard(
                        bgImage: data.discoverData[index]['backgroundImage']
                            .toString(),
                        name: data.discoverData[index]['name'].toString(),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 350,
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                  ))
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 170,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/cd_bg.jpeg'),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const SizedBox(
                    height: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Calm Down',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Remu, Salena Gomez',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const SizedBox(
                    height: 50,
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xff424243),
                      onPressed: () => print('Pressed'),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Icon(
                        Icons.pause_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 25,
                  ),
                  Icon(
                    Icons.search_rounded,
                    size: 25,
                  ),
                  Icon(
                    Icons.library_music_rounded,
                    size: 25,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 25,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
