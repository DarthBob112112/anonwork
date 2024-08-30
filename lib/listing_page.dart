// import 'package:anonwork/contract.g.dart';
import 'package:flutter/material.dart';
import 'funcs.dart';
import 'contract.g.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({super.key});

  @override
  State<ListingPage> createState() => _ListingPageState();
}

void addJob(List<List<String>> lis, String dscript, String category,
    String time, String amount) {
  lis.add([dscript, category, time, amount]);
}

List<String> j = ["fake ass job", "gaming", "2 days", "\$20"];

class _ListingPageState extends State<ListingPage> {
  final List<List<String>> x = [];
  List<Jobs> listings=[];
  Future<void> doList() async{
    print("second");
    listings=await getListings();
    print("third");
    print(listings);
    print("fourth");
    setState(() {});
    print("fifth");
  }
  initState() {
    print("first");
    doList();
    print("sixth");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
            // JobListCard(job: j), //remove this later
            [
              for (int i = 0; i < listings.length; i++) JobListCard(job: listings[i])
            ],

        ),
      ),
    );
  }
}

// class JobListCard extends StatelessWidget {
//   final List<String> job;
//   const JobListCard({super.key, required this.job});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Text(job[0]),
//           Text(job[1]),
//           Text(job[2]),
//           Text(job[3]),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("Select Job"),
//           )
//         ],
//       ),
//     );
//   }
// }
class JobListCard extends StatelessWidget {
  final Jobs job;
  const JobListCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    print("building");
    return Card(
      child: Column(
        children: [
          Text(job.desc),
          Text(job.category),
          Text(job.deadline),
          Text(job.amount.toString()),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Select Job"),
          )
        ],
      ),
    );
  }
}
