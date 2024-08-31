// import 'package:anonwork/contract.g.dart';
import 'package:flutter/material.dart';
import 'funcs.dart';
import 'contract.g.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

void addJob(List<List<String>> lis, String dscript, String category,
    String time, String amount) {
  lis.add([dscript, category, time, amount]);
}

//List<String> j = ["fake ass job", "gaming", "2 days", "\$20"];

class _ProfilePageState extends State<ProfilePage> {
  final List<List<String>> x = [];
  Map<int,Jobs> myJobs={};
  Future<void> doList() async{
    await getClientJobs();
    print(clientJobs);
    setState(() {});
  }

  initState() {
    doList();
    // print(EtherAmount.inWei(BigInt.from(2)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        height: 1080.0,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BackButton(),
                      Image.asset(
                        'assets/images/workname.png',
                      ),
                    ],
                  ),
                ),
                for (MapEntry<int, Jobs> entry in clientJobs.entries)
                  JobListCard(jobId: entry.key,job: entry.value)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JobListCard extends StatelessWidget {
  final Jobs job;
  final int jobId;
  const JobListCard({super.key, required this.jobId, required this.job});

  @override
  Widget build(BuildContext context) {
    print("building ${job.toMap()}");
    return Card(
      child: Column(
        children: [
          Text(job.desc),
          Text(job.category),
          Text(job.deadline),
          Text(job.amount.toString()),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/job',arguments: <String,dynamic> {"jobId":jobId,"job":job});
            },
            child: const Text("Select Job"),
          )
        ],
      ),
    );
  }
}
