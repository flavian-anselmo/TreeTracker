
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DisplayTreeAdded extends StatefulWidget {
  const DisplayTreeAdded({Key? key}) : super(key: key);
  static const String id = 'displayrR';

  @override
  _DisplayTreeAddedState createState() => _DisplayTreeAddedState();
}

class _DisplayTreeAddedState extends State<DisplayTreeAdded> {
  final firestore = FirebaseFirestore.instance;
  bool isfetched = false;
  @override
  void initState() {
    super.initState();
    //get the data form cloud fire store
    fetchFromFireStore();
  }

  List treeImages = []; //this is alist of maps to store the video urls

  Future<void> fetchFromFireStore() async {
    //fetch data form cloud fire store upon loading the sttring
    final trees = await firestore.collection('pics').get();
    for (var tree in trees.docs) {
      setState(() {
        treeImages.add(tree.data());
        isfetched =true;
        print(treeImages);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isfetched == true
        ? ListView.builder(
            itemCount: treeImages.length,
            itemBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(child: Column(
                  children: [
                    Image.network(treeImages[index]['videourl']),
                    const Text('location:'),
                    const Text('Kisumu')
                  ],
                )),
              );
            })
        : const Center(child: CircularProgressIndicator());
  }
}
