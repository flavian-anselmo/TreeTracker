import 'package:flutter/material.dart';

class ClimateChange extends StatelessWidget {
  const ClimateChange({Key? key}) : super(key: key);
  static const String id = 'climate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Climate Change'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            //exaplaiin the dangers of climate change
            Image.asset('images/image1.jpeg'),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'HOW DO WE KNOW THAT THE EARTH IS WARMING ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'WHY IS THE PLANET EARTH HOT ? ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'WHAT IS THE GREEN HOUSE EFFECT? ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'DOES THE EARTH CLIMATE CHANGE NATURALLY? ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'IS THE RISE CARBON DIOXIDE LEVELS DUE TO HUMAN ACTIVITY?  ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: const [
                  Center(
                      child: Text(
                    'CAN WE BE SURE THAT HUMAN ACTIVITY IS CAUSING GLOBAL WARMING? ',
                    style: TextStyle(color: Colors.green),
                  )),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
