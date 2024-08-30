import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/worknet-01.png',
                      width: 60,
                      height: 60,
                    ),
                    Image.asset(
                      'assets/images/workname.png',
                      width: 200,
                      height: 60,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "About",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text.rich(
                  style: TextStyle(fontFamily: 'LeagueGothic', fontSize: 40),
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Make ',
                          style: TextStyle(color: Colors.yellow)),
                      TextSpan(text: 'Work, '),
                      TextSpan(
                          text: 'Find ',
                          style: TextStyle(color: Colors.yellow)),
                      TextSpan(text: 'Work '),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text(
                  "Your One Stop Shop for \n finding and creating work.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'LeagueGothic', fontSize: 70.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/post');
                      },
                      child: const Text("Looking to Hire?"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/listings');
                      },
                      child: const Text("Looking for Work?"),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(80.0))
            ],
          ),
        ),
      ),
    );
  }
}
