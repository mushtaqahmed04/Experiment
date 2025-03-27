// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(API8());
// }

// class API8 extends StatefulWidget {
//   const API8({super.key});
//   @override
//   State<API8> createState() => _API8State();
// }

// class _API8State extends State<API8> {
//   List<Photo> postmodel = [];

//   Future<List<Photo>> getpostapi() async {
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> i in data) {
//         Photo photo = Photo(title: i["title"], url: i["URL"]);
//         postmodel.add(photo);
//       }
//       return postmodel;
//     } else {
//       return postmodel;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: FutureBuilder(
//                   future: getpostapi(),
//                   builder: (context,AsyncSnapshot<List<Photo>> snapshot) {
//                     return ListView.builder(
//                       itemCount: postmodel.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           title: Text(snapshot.data![index].title.toString()),
//                         );
//                       },
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Photo {
//   String title, url;
//   Photo({required this.title, required this.url});
// }
