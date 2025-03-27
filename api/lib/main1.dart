// import 'dart:convert';
// import 'package:api/Model/PostModel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(Home());
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<PostsModel> postList = [];
//   Future<List<PostsModel>> getpostApi() async {
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> i in data) {
//         postList.add(PostsModel.fromJson(i));
//       }
//       return postList;
//     } else {
//       return postList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             FutureBuilder(
//                 future: getpostApi(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Text("Loading");
//                   } else {
//                     return ListView.builder(
//                       itemCount: postList.length,
//                       itemBuilder: (context, index) {
//                         return Column(
//                           children: [
//                             Text(postList[index].id.toString()),
//                             Text(postList[index].body.toString()),
//                             Text(postList[index].title.toString()),
//                           ],
//                         );
//                       },
//                     );
//                   }
//               })
//           ],
//         ),
//       ),
//     );
//   }
// }

