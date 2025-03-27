import 'dart:convert';
import 'package:api/Model/PostsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Users());
}

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List<User> Users = [];
  Future<List<User>> getuserapi() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        Users.add(User.fromJson(i));
      }
      return Users;
    } else {
      return Users;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Expanded(
              child: FutureBuilder(
                  future: getuserapi(),
                  builder: (context, AsyncSnapshot<List<User>> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    } else {
                      return ListView.builder(
                          itemCount: Users.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12),
                              child: Reuse(tilte: snapshot.data![index].address!.geo!.lat.toString(), 
                                           value: snapshot.data![index].address!.geo!.lat.toString())
                            );
                          });
                    }
        }
      ))),
    );
  }
}


class Reuse extends StatelessWidget {
  String tilte , value;
  Reuse({super.key, required this.tilte, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
                              children: [
                                  Text(tilte),
                                  Text(value),
                                  // Text(snapshot.data![index].company.toString()),
                                ],
                              );
  }
}
