import 'package:flutter/material.dart';

class Experiment extends StatefulWidget {
  const Experiment({super.key});

  @override
  State<Experiment> createState() => _ExperimentState();
}

class _ExperimentState extends State<Experiment> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("Tap to increase $counter"),
            TextButton(
                onPressed: () {
                  counter++;
                  print(counter);
                  setState(() {});
                },
                child: Text("+")),
            TextButton(
                onPressed: () {
                  counter--;
                  print(counter);
                  setState(() {});
                },
                child: Text("-"))
          ],
        ),
      ),
    );
  }
}
