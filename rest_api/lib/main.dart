import 'package:flutter/material.dart';
import 'package:rest_api/home_page.dart';
import 'package:rest_api/http_delete.dart';
import 'package:rest_api/http_get.dart';
import 'package:rest_api/http_post.dart';
import 'package:rest_api/http_put.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/get-data': (context) => const HttpGet(),
        '/post-data': (context) => const HttpPost(),
        '/put-data': (context) => const HttpPut(),
        '/delete-data': (context) => const HttpDelete(),
      },
    );
  }
}
