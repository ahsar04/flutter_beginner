import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDelete extends StatefulWidget {
  const HttpDelete({super.key});

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP DELETE"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              var response =
                  await http.get(Uri.parse("https://reqres.in/api/users/2"));
              Map<String, dynamic> responseBody =
                  json.decode(response.body) as Map<String, dynamic>;
              setState(() {
                data =
                    "Nama: ${responseBody['data']['first_name']} ${responseBody['data']['last_name']}";
              });
            },
            icon: const Icon(Icons.get_app),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            data,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () async {
                var response = await http
                    .delete(Uri.parse("https://reqres.in/api/users/2"));
                if (response.statusCode == 204) {
                  setState(() {
                    data = "Data deleted";
                  });
                } else {
                  data = "Terjadi kesalahan";
                }
              },
              child: Text("Delete"))
        ],
      ),
    );
  }
}
