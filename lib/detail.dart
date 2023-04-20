import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
class IoTDetailsScreen extends StatefulWidget {
  const IoTDetailsScreen({Key? key}) : super(key: key);

  @override
  _IoTDetailsScreenState createState() => _IoTDetailsScreenState();
}

class _IoTDetailsScreenState extends State<IoTDetailsScreen> {
  String temperature = '0';
  String humidity = '0';
  String light = 'off';

  @override
  void initState() {
    super.initState();
    // Code to connect to your IoT device and receive data goes here
    // Replace the code below with the actual code for receiving data from your IoT device
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        temperature = '25';
        humidity = '60';
        light = 'on';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temperature: $temperature',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Humidity: $humidity',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Light: $light',
              style: TextStyle(fontSize: 24),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
              ),
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              margin: EdgeInsets.only(right: 40,left: 40),
              child: Row(
                children: [Text('freshness'),
                  SizedBox(width: 20.0,),
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
