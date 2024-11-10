import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _V0State();
}

class _V0State extends State<Home> {
  double _size = 125.0;
  int _red = 25;
  int _green = 0;
  int _blue = 0;
  double _opacity = 1.0;

  void _onChangeRed(double valueRed) {
    setState(() {
      _red = valueRed.toInt();
    });
  }

  void _onChangeGreen(double valueGreen) {
    setState(() {
      _green = valueGreen.toInt();
    });
  }

  void _onChangeBlue(double valueBlue) {
    setState(() {
      _blue = valueBlue.toInt();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: _size,
                height: _size,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(_red, _green, _blue, 1),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("Red: "),
                Text(
                  "$_red",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _red.toDouble(),
              min: 0,
              max: 255,
              activeColor: Colors.red,
              onChanged: _onChangeRed,
            ),
            Row(
              children: [
                Text("Green: "),
                Text(
                  "$_green",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _green.toDouble(),
              min: 0,
              max: 255,
              activeColor: Colors.green,
              onChanged: _onChangeGreen,
            ),
            Row(
              children: [
                Text("Blue: "),
                Text(
                  "$_blue",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _blue.toDouble(),
              min: 0,
              max: 255,
              activeColor: Colors.blue,
              onChanged: _onChangeBlue,
            ),
            
          ],
        ),
      ),
    );
  }
}
