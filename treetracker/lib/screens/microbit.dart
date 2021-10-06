import 'package:flutter/material.dart';

class MicrobitSimulation extends StatelessWidget {
  const MicrobitSimulation({Key? key}) : super(key: key);
  static const String id = 'microbit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network(
              'https://public-media.driftvideo.com/videos-gifs/DRIFT-VIDEO-2852296-2952032-1633482035.gif'),
          Card(
            child: Column(
              children: const [
                Center(
                    child: Text(
                  'Tree Falling Tracker ',
                  style: TextStyle(color: Colors.green, fontSize: 30),
                )),
                Text(
                  'The Students were able to develop a device that tracks a falling tree in the Forest,The Sender device that is attached to a tree  send a signall if there is a freefall and the reciver which is worn by the Warden displays a tree is falling.  ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
