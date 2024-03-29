import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  bool like = true;
  bool Follow = true;
  int likecount = 0;
  List<String> video = [
    "assets/Reelsvideo/1.mp4",
    "assets/Reelsvideo/2.mp4",
    "assets/Reelsvideo/3.mp4",
    "assets/Reelsvideo/4.mp4",
    "assets/Reelsvideo/5.mp4",
    "assets/Reelsvideo/6.mp4",
    "assets/Reelsvideo/7.mp4",
    "assets/Reelsvideo/8.mp4",
    "assets/Reelsvideo/9.mp4",
    "assets/Reelsvideo/10.mp4",
    "assets/Reelsvideo/11.mp4",
    "assets/Reelsvideo/12.mp4",
    "assets/Reelsvideo/13.mp4",
    "assets/Reelsvideo/14.mp4",
    "assets/Reelsvideo/15.mp4",
    "assets/Reelsvideo/16.mp4",
    "assets/Reelsvideo/17.mp4",
    "assets/Reelsvideo/18.mp4",
    "assets/Reelsvideo/19.mp4",
    "assets/Reelsvideo/20.mp4",
    "assets/Reelsvideo/21.mp4",
    "assets/Reelsvideo/22.mp4",
    "assets/Reelsvideo/23.mp4",
    "assets/Reelsvideo/24.mp4",
    "assets/Reelsvideo/25.mp4",
    "assets/Reelsvideo/26.mp4",
    "assets/Reelsvideo/27.mp4",
    "assets/Reelsvideo/28.mp4",
    "assets/Reelsvideo/29.mp4",
    "assets/Reelsvideo/30.mp4",
    "assets/Reelsvideo/31.mp4",
    "assets/Reelsvideo/32.mp4",
    "assets/Reelsvideo/33.mp4",
    "assets/Reelsvideo/34.mp4",
    "assets/Reelsvideo/35.mp4",
    "assets/Reelsvideo/36.mp4",
    "assets/Reelsvideo/37.mp4",
    "assets/Reelsvideo/38.mp4",
    "assets/Reelsvideo/39.mp4",
    "assets/Reelsvideo/40.mp4",
    "assets/Reelsvideo/41.mp4",
    "assets/Reelsvideo/42.mp4",
    "assets/Reelsvideo/43.mp4",
    "assets/Reelsvideo/44.mp4",
    "assets/Reelsvideo/45.mp4",
    "assets/Reelsvideo/46.mp4",
    "assets/Reelsvideo/47.mp4",
    "assets/Reelsvideo/48.mp4",
    "assets/Reelsvideo/49.mp4",
    "assets/Reelsvideo/50.mp4",
    "assets/Reelsvideo/51.mp4",
    "assets/Reelsvideo/52.mp4",
    "assets/Reelsvideo/53.mp4",
    "assets/Reelsvideo/54.mp4",
    "assets/Reelsvideo/55.mp4",
    "assets/Reelsvideo/56.mp4",
  ];


//assets.
  late VideoPlayerController controller;
  late PageController pageController;
  int videoIndex = 0;

  void videosetpath() {
    controller = VideoPlayerController.asset(video[videoIndex])
      ..initialize().then((_) {
        controller.setLooping(true);
        controller.play();
      });
  }

  @override
  void initState() {
    super.initState();
    // controller = VideoPlayerController.asset(video[videoIndex])
    //   ..initialize().then((_) {
    //     controller.setLooping(true);
    //     controller.play();
    //   });
    videosetpath();

    pageController = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Reels",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: video.length,
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                videoIndex = index;
              });
              controller.dispose();
              videosetpath();
              // controller = VideoPlayerController.asset(video[videoIndex])
              //   ..initialize().then((_) {
              //     controller.setLooping(true);
              //     controller.play();
              //   });
            },
            itemBuilder: (context, index) {
              return AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: GestureDetector(
                  onTap: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }
                  },
                  child: VideoPlayer(controller),
                ),
              );
            },
          ),
          Positioned(
            right: 16.0,
            top: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like = !like;
                          if (like) {
                            likecount++;
                          } else {
                            likecount = 0;
                          }
                        });
                      },
                      icon: Icon(
                        like ? Icons.favorite : Icons.favorite,
                        color: like ? Colors.red : null,
                        size: 40,
                      ),
                    ),
                    Text(
                      likecount.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    // Handle comment button press
                  },
                  icon: Icon(
                    Icons.comment,
                    size: 40,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    // Handle share button press
                  },
                  icon: Icon(
                    Icons.send,
                    size: 40,
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter / 1,
            child: Positioned(
              bottom:
                  100, // Adjust this value to position the ListTile properly
              child: Card(
                color: Colors.transparent,
                child: SizedBox(
                  height: 100,
                  width: 400,
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                      title: Text(
                        "Slender",
                        style: TextStyle(color: Colors.red),
                      ),
                      subtitle: Text(
                        "Designer",
                        style: TextStyle(color: Colors.amber),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (Follow) {
                                  return const Color.fromARGB(
                                      255, 219, 125, 118);
                                } else {
                                  return Colors.amber;
                                }
                              }),
                            ),
                            onPressed: () {
                              setState(() {
                                Follow = !Follow;
                              });
                            },
                            child: Text(
                              Follow ? "Follow" : "Following",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
