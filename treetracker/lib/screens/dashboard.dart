import 'package:flutter/material.dart';
import 'package:treetracker/screens/climate.dart';
import 'package:treetracker/screens/map.dart';
import 'package:treetracker/screens/microbit.dart';
import 'package:treetracker/screens/tree.dart';
import 'package:treetracker/screens/upload.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);
  static const String id = 'dashboard';

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Tree')),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Team Champions',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
              Image.network(
                  'https://public-media.driftvideo.com/videos-gifs/DRIFT-VIDEO-2852296-2952032-1633482035.gif'),
              GridView.count(
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  InkWell(
                    onTap: () {
                      //display the trees available
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DisplayTreeAdded();
                      }));
                    },
                    child: const Card(
                      child: Center(child: Text('My trees')),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ClimateChange();
                      }));
                    },
                    child: const Card(
                      child: Center(child: Text('Climate Change')),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MicrobitSimulation();
                      }));
                    },
                    child: const Card(
                      child: Center(
                        child: Text('Microbit Project Demo'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StudentVideos();
                      }));
                    },
                    child: const Card(
                      child: Center(
                        child: Text('plant Trees'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const UploadPhotoToDb();
          }));
        },
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
/**
 * this is the apss database 
 * will be used to display the options 
 * the user can choose when using the app 
 * 
 */
