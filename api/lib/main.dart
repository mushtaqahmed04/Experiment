// import 'dart:convert';
// import 'package:api/Model/PostModel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(HomeScreen());
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<PostsModel> postList = [];
//   Future<List<PostsModel>> getPostApi() async {
//     final resposne ="https://jsonplaceholder.typicode.com/posts"
//         await http.get(Uri.parse());
//     var data = jsonDecode(resposne.body.toString());
//     if (resposne.statusCode == 200) {
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
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text("Api Course")),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: FutureBuilder(
//                 future: getPostApi(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Text("Loading");
//                   } else {
//                     return ListView.builder(
//                         itemCount: postList.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(postList[index].body.toString()),
//                                 Text(postList[index].title.toString()),
//                                 Text(postList[index].id.toString()),

//                               ],
//                             ),
//                           );
//                         });
//                   }
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
