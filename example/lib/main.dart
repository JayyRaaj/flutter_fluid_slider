import 'package:flutter/material.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() {
    return  HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double _value1 = 0.0;
  double _value2 = 10.0;
  double _value3 = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FluidSlider(
              value: _value1,
              onChanged: (double newValue) {
                setState(() {
                  _value1 = newValue;
                });
              },
              min: 0.0,
              max: 100.0,
            ),
            const SizedBox(
              height: 100.0,
            ),
            FluidSlider(
              value: _value2,
              onChanged: (double newValue) {
                setState(() {
                  _value2 = newValue;
                });
              },
              min: 0.0,
              max: 500.0,
              sliderColor: Colors.redAccent,
              thumbColor: Colors.amber,
              start: const Icon(
                Icons.money_off,
                color: Colors.white,
              ),
              end: const Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            FluidSlider(
                value: _value3,
                sliderColor: Colors.purple,
                onChanged: (double newValue) {
                  setState(() {
                    _value3 = newValue;
                  });
                },
                min: 1.0,
                max: 5.0,
                mapValueToString: (double value) {
                  List<String> romanNumerals = ['I', 'II', 'III', 'IV', 'V'];
                  return romanNumerals[value.toInt() - 1];
                }),
          ],
        ),
      ),
    );
  }
}
