import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StudentVideos extends StatefulWidget {
  const StudentVideos({Key? key}) : super(key: key);
  static const String id = 'videos';

  @override
  _StudentVideosState createState() => _StudentVideosState();
}

class _StudentVideosState extends State<StudentVideos> {
  late VideoPlayerController videocontroller;
  late Future<void> initializeVideoPlayerFuture;
  bool isfetched = false;

  @override
  void initState() {
    super.initState();
    videocontroller = VideoPlayerController.asset('assets/video.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => videocontroller.play());
  }

  @override
  void dispose() {
    super.dispose();
    videocontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: videocontroller.value.aspectRatio,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                //pause the video
                setState(() {
                  if (videocontroller.value.isPlaying) {
                    videocontroller.pause();
                  } else {
                    videocontroller.play();
                  }
                });
              },
              child: AspectRatio(
                aspectRatio: videocontroller.value.aspectRatio,
                child: VideoPlayer(videocontroller),
              ),
            ),
            const Expanded(
              child: Card(
                child: Center(
                  child: Text(
                    'The Students from obinju participated in Tree Planting to curb deafforestation',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
