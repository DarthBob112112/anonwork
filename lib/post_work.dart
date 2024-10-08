import 'package:anonwork/funcs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController _desc =
      TextEditingController(); //service description
  final TextEditingController _category = TextEditingController(); //category
  final TextEditingController _deadline =
      TextEditingController(); //delivery time
  final TextEditingController _amt =
      TextEditingController(); //delivery time
  @override
  void dispose() {
    _desc.dispose();
    _category.dispose();
    _deadline.dispose();
    _amt.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200.0),
                child:
                    IconButton(onPressed: () {Navigator.popUntil(context, ModalRoute.withName('/'));}, icon: const Icon(Icons.home)),
              ), //no home navigation yet
              const Text(
                "What service would you like?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              CustomTextField(
                name: 'Enter your service description',
                icon: Icon(Icons.shop),
                controller: _desc,
              ),
              const Text(
                "Enter a category : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              CustomTextField(
                name: 'Category',
                icon: Icon(Icons.check_box),
                controller: _category,
              ),
              const Text(
                "What is your expected delivery time?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              CustomTextField(
                name: 'DAYS : HOURS : MINUTES : SECONDS',
                icon: Icon(Icons.punch_clock),
                controller: _deadline,
              ),
              const Text(
                "What is your budget for this order?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              CustomTextField(
                name: 'Amount in USD',
                icon: Icon(Icons.attach_money),
                controller: _amt,
              ),
              ElevatedButton(
                onPressed: () async{
                  String x = _desc.text;
                  print('$x'); // ADD A ON PRESSED FUNCTION
                  await postJob(_desc.text, _category.text, _deadline.text, int.parse(_amt.text)).then((val)=>Navigator.popUntil(context,ModalRoute.withName('/')));
                },
                child: const Text(
                  "Post",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String name;
  final Icon icon;
  final TextEditingController controller;
  const CustomTextField({
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
