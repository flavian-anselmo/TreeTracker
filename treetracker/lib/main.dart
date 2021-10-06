import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:treetracker/screens/climate.dart';
import 'package:treetracker/screens/dashboard.dart';
import 'package:treetracker/screens/goals.dart';
import 'package:treetracker/screens/map.dart';
import 'package:treetracker/screens/microbit.dart';
import 'package:treetracker/screens/upload.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: DashBoard.id,
      routes: {
        DashBoard.id: (context) => const DashBoard(),
        UploadPhotoToDb.id: (context) => const UploadPhotoToDb(),
        ClimateChange.id: (context) => const ClimateChange(),
        Goals.id: (context) => const Goals(),
        MicrobitSimulation.id:(context)=>const MicrobitSimulation(),
        DisplayTreeAdded.id:(context)=>const DisplayTreeAdded(),
      },
    );
  }
}



/**
 * the students were taught to set the theme of the 
 * application 
 * showed them how to implement dark theme in ana application 
 */