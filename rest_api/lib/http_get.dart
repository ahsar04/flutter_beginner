import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpGet extends StatefulWidget {
  const HttpGet({super.key});

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String id;
  late String email;
  late String name;
  @override
  void initState() {
    id = "belum ada data";
    email = "belum ada data";
    name = "belum ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP GET'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID : $id",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Email: $email",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Name: $name",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async {
                var myResponse = await http.get(
                  Uri.parse('https://reqres.in/api/users/5'),
                );
                if (myResponse.statusCode == 200) {
                  Map<String, dynamic> data =
                      json.decode(myResponse.body) as Map<String, dynamic>;
                  setState(() {
                    id = data["data"]["id"].toString();
                    email = data["data"]["email"].toString();
                    name =
                        '${data["data"]["first_name"]} ${data["data"]["last_name"]}';
                  });
                } else {
                  setState(() {
                    print("ERROR ${myResponse.statusCode}");
                  });
                }
              },
              child: const Text(
                'GET DATA',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
