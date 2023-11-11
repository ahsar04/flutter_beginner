import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/get-data');
            },
            child: const Text('Get data'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/post-data');
            },
            child: const Text('Post data'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/put-data');
            },
            child: const Text('Put data'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/delete-data');
            },
            child: const Text('Delete data'),
          ),
        ],
      ),
    );
  }
}
