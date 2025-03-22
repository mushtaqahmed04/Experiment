import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var result ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          TextField(
            controller: controller1,
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: controller2,
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    var no1 = int.parse(controller1.text.toString());
                    var no2 = int.parse(controller1.text.toString());
                    var sum = no1 + no2;
                    result = "The sum of $no1 and $no2 is $sum";
                     setState(() {});
                  },
                  child: Text("ADD")),
              TextButton(onPressed: () {
                var no1 = int.parse(controller1.text.toString());
                    var no2 = int.parse(controller1.text.toString());
                    var sum = no1 - no2;
                    result = "The substract of $no1 and $no2 is $sum";
                    setState(() {
                      
                    });
              }, child: Text("SUB")),
              TextButton(onPressed: () {
                var no1 = int.parse(controller1.text.toString());
                    var no2 = int.parse(controller1.text.toString());
                    var sum = no1 * no2;
                    result = "The multiple of $no1 and $no2 is $sum";
                     setState(() {});
              }, child: Text("MULTI")),
              TextButton(onPressed: () {
                var no1 = int.parse(controller1.text.toString());
                    var no2 = int.parse(controller1.text.toString());
                    var sum = no1 / no2;
                    result = "The divide of $no1 and $no2 is $sum";
                     setState(() {});
              }, child: Text("DIVIDE")),
            ],
          ),
          Text("$result"),
        ]),
      ),
    );
  }
}
