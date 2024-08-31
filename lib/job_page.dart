import 'package:flutter/material.dart';
import 'funcs.dart';
import 'contract.g.dart';

enum Status { posted, pending, approved, completed, rejected }

Map<int, String> Codes = {
  0: "Posted",
  1: "Pending",
  2: "Approved",
  3: "Completed",
  4: "Rejected"
};

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    int jobId = args["jobId"];
    Jobs job = args["job"];
    int stat=job.status.toInt();
    Widget button;
    switch (stat) {
      case Status.posted:
        button = ElevatedButton(onPressed: () {}, child: Text("Not Assigned"));
      case Status.pending:
        button =
            ElevatedButton(onPressed: () {}, child: Text("Awaiting Worker"));
      case Status.completed:
        button = Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text("Approve")),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text("Reject")),
          ],
        );
      case Status.approved:
        button = ElevatedButton(onPressed: () {}, child: Text("Job Approved"));
      case Status.posted:
        button = ElevatedButton(onPressed: () {}, child: Text("Job Rejected"));
    }

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
            ),
            height: 1080.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(job.desc),
                  Text(job.category),
                  Text(job.deadline),
                  Text(job.amount.toString()),
                  Text(Codes[stat.toInt()] ?? "Status Error"),
                  if (stat == Status.posted.index)
                    ElevatedButton(
                        onPressed: null, child: Text("Not Assigned"))
                  else if (stat == Status.pending.index)
                    ElevatedButton(
                        onPressed: null, child: Text("Awaiting Worker"))
                  else if (stat == Status.completed.index)
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () async{
                              await approveJob(jobId);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            child: Text("Approve")),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            child: Text("Reject")),
                      ],
                    )
                  else if (stat == Status.approved.index)
                    ElevatedButton(
                        onPressed: null, child: Text("Job Approved"))
                  else if (stat == Status.posted.index)
                    ElevatedButton(
                        onPressed: null, child: Text("Job Rejected"))
                  ,
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: () async{
                    await acceptJob(jobId);
                  }, child: Text("ACCEPT")),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: () async{
                    await completeJob(jobId);
                  }, child: Text("COMPLETE")),
                ],
              ),
            )));
  }
}
