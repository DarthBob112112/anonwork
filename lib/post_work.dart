import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //ThemeData theme = Theme.of(context);
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "What service would you like?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            customTextField(
              name: 'Enter your service description',
              icon: Icon(Icons.shop),
            ),
            Text(
              "Enter a category : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            customTextField(
              name: 'Category',
              icon: Icon(Icons.check_box),
            ),
            Text(
              "What is your expected delivery time?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            customTextField(
              name: 'DAYS : HOURS : MINUTES : SECONDS',
              icon: Icon(Icons.punch_clock),
            ),
            customButton(name: "Post"),
          ],
        ),
      ),
    );
  }
}

class customTextField extends StatelessWidget {
  final String name;
  final Icon icon;
  //TextEditingController controller;
  const customTextField({
    super.key,
    required this.name,
    required this.icon,
    //required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: name,
        icon: icon,
      ),
    );
  }
}

class customButton extends StatelessWidget {
  final String name;

  const customButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
