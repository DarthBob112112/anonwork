import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController _controller1 =
      TextEditingController(); //service description
  final TextEditingController _controller2 = TextEditingController(); //category
  final TextEditingController _controller3 =
      TextEditingController(); //delivery time
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home)), //no home navigation yet
            const Text(
              "What service would you like?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            customTextField(
              name: 'Enter your service description',
              icon: Icon(Icons.shop),
              controller: _controller1,
            ),
            const Text(
              "Enter a category : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            customTextField(
              name: 'Category',
              icon: Icon(Icons.check_box),
              controller: _controller2,
            ),
            const Text(
              "What is your expected delivery time?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            customTextField(
              name: 'DAYS : HOURS : MINUTES : SECONDS',
              icon: Icon(Icons.punch_clock),
              controller: _controller3,
            ),
            ElevatedButton(
              onPressed: () {
                String x = _controller1.text;
                print('$x'); // ADD A ON PRESSED FUNCTION
              },
              child: const Text(
                "Post",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class customTextField extends StatelessWidget {
  final String name;
  final Icon icon;
  final TextEditingController controller;
  const customTextField({
    super.key,
    required this.name,
    required this.icon,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: name,
        icon: icon,
      ),
    );
  }
}
