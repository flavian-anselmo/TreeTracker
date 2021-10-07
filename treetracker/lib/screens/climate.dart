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
                      'Independent temperature records form multiple official sources confirm that there is absolutely no doubt whatsoever that the earth is warming.Indeed each of the last three decades has been succesefull warmer than the one before,19 of the top 20 most warmest years have occured in the last 19 years and th past 4 years have been the hottest on record.2016 was the hottest year ever recoreded'),
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
                      'The planet is now very probabl hotter than at any point than in at least the last 125,000 years.A: Since the Industrial Revolution, the global annual temperature has increased in total by a little more than 1 degree Celsius, or about 2 degrees Fahrenheit. Between 1880—the year that accurate recordkeeping began—and 1980, it rose on average by 0.07 degrees Celsius (0.13 degrees Fahrenheit) every 10 years. Since 1981, however, the rate of increase has more than doubled: For the last 40 years, we’ve seen the global annual temperature rise by 0.18 degrees Celsius, or 0.32 degrees Fahrenheit, per decade.'),
                ],
              ),
            ),
           
           
            
            
          ],
        ),
      ),
    );
  }
}
