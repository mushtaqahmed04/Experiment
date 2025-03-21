import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Increment $counter"),
              TextButton(
                  onPressed: () {
                    setState(() {
                      for (counter= 0; counter <= 1000; counter++) {
                        print(counter);
                      }
                      ;
                    });
                  },
                  child: Text("+")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                      print(counter);
                    });
                  },
                  child: Text("-"))
            ],
          ),
        ),
      ),
    );
  }
}
