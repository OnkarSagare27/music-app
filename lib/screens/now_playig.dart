import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_horiz_rounded),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff1f2f8),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(200)),
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: Color(0xfff1f2f8),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/calm_down.png',
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: FloatingActionButton(
                                backgroundColor: Colors.white,
                                onPressed: () => print('Pressed Play'),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: const Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff1f2f8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Calm Down',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              'Rema, Selena Gomez',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 50, left: 50),
              child: ProgressBar(
                progress: Duration(seconds: 150),
                total: Duration(seconds: 239),
                buffered: Duration(seconds: 150),
                timeLabelPadding: 20,
                timeLabelTextStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                progressBarColor: Color(0xffff6f61),
                baseBarColor: Color(0xfff1f2f8),
                bufferedBarColor: Color(0xfff1f2f8),
                thumbColor: Color(0xffff6f61),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.skip_previous_rounded,
                    size: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xff424243),
                      onPressed: () => print('Pressed'),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const Icon(
                        Icons.pause_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.skip_next_rounded,
                    size: 30,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.speaker,
                    size: 30,
                  ),
                  Icon(
                    Icons.shuffle_rounded,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.playlist_add,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.playlist_play,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              size: 25,
              color: Color(0xffff6f61),
            ),
          ],
        ),
      ),
    );
  }
}
