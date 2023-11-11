import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:basic_cubit/models/user_model.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<User> allUser = [];
  Future GetData() async {
    try {
      var response =
          await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element) {
        allUser.add(User.fromJson(element));
      });
    } catch (e) {
      print("Terjadi kesalahan");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Future Builder"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: GetData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loading..."),
                );
              } else {
                if (allUser.length == 0) {
                  return Center(
                    child: Text("Tidak ada data"),
                  );
                }
                return ListView.builder(
                  itemCount: allUser.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage("${allUser[index].avatar}"),
                    ),
                    title: Text(
                        "${allUser[index].firstName} ${allUser[index].lastName}"),
                    subtitle: Text("${allUser[index].email}"),
                  ),
                );
              }
            }));
  }
}
