import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Home Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Post Work")),
          ElevatedButton(onPressed: () {}, child: const Text("Find Work")),
          Transform.scale(
            scale: 0.5,
            child: Image.asset(
              'assets/images/fresh.jpg',
            ),
          ),
        ]),
      ),
    );
  }
}
