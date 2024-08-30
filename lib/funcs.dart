import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart';
import 'package:webthree/browser.dart';
import 'package:webthree/credentials.dart';
import 'package:webthree/webthree.dart';
import 'package:webthree/json_rpc.dart';

import 'contract.g.dart';

late Web3Client ethClient;
late Ethereum eth;
late List<dynamic> credentials;
late Contract contractAbi;
final String contractAddress="0x3E16f5385E2A89F89652dB49630338491C5346c5";
final String blockchainUrl = "https://rpc.open-campus-codex.gelato.digital/";
late Stream<JobPosted> posts;
List<Jobs> clientJobs=[];
List<Jobs> workerJobs=[];
// late FirebaseFirestore db;

Future<void> init_metamask() async{
  eth=window.ethereum!;
  ethClient = Web3Client(
      blockchainUrl,
      Client());

  credentials=await eth.requestAccounts();
  contractAbi = Contract(
      address: EthereumAddress.fromHex(contractAddress), client: ethClient);
  getPersonalJobs();
}
Future<void> getClientJobs() async{
  print(credentials[0].address);
  clientJobs=[];
  await contractAbi.getClientJobs(credentials[0].address).then((value) => value.forEach((element) {clientJobs.add(Jobs(element));}));
  // print(haha[0].runtimeType);
  clientJobs.forEach((element) {print((element.toMap()));});
  print("done");
}
Future<void> getWorkerJobs() async{
  workerJobs= [];
  await contractAbi.getWorkerJobs(credentials[0].address).then((value) =>  value.forEach((element) {workerJobs.add(Jobs(element));}));
  workerJobs.forEach((element) {print((element.toMap()));});
  print("done");
}
void getPersonalJobs(){
  getClientJobs();
  getWorkerJobs();
}
Future<List<Jobs>> getListings() async{
  print('inside1');
  List<Jobs> listings=[];
  print("inside2");
  await contractAbi.getListing().then((value) => value.forEach((element) {listings.add(Jobs(element));}));
  return listings;
}

Future<int> postJob(String desc, String category, String delivery, int amt) async{  //Client posts Job
  int jobId=UniqueKey().hashCode;
  await contractAbi.postJob(BigInt.from(amt), credentials[0].address, BigInt.from(jobId), desc, category, delivery, credentials: credentials[0]);
  print("hi");
  getPersonalJobs();
  return jobId;
}
Future<void> acceptJob(int jobId) async{                 //Client accepts Worker to do Job
  await contractAbi.acceptJob(BigInt.from(jobId), credentials[0].address, credentials: credentials[0]);
  getPersonalJobs();
}
Future<void> completeJob(int jobId) async{                 //Worker approves Job
  await contractAbi.completeJob(BigInt.from(jobId), credentials[0].address, credentials: credentials[0]);
  getPersonalJobs();
}
Future<void> approveJob(int jobId) async{                 //Client approves Job
  await contractAbi.approveJob(BigInt.from(jobId), credentials[0].address, credentials: credentials[0]);
  getPersonalJobs();
}
Future<void> getJob(int jobId) async{
  Jobs job=await contractAbi.jobs(BigInt.from(jobId));
  print("${job.client} ${job.amount} ${job.status} ${job.worker}");
}

// Future<void> init_firebase() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   db = FirebaseFirestore.instance;
//
//   await db.collection("jobids").where(
//       "client", isEqualTo: credentials[0].address.toString()).get().then((
//       querySnapshot) {
//     print("Successfully completed");
//     for (var docSnapshot in querySnapshot.docs) {
//       print('${docSnapshot.id} => ${docSnapshot.data()}');
//       Map<String, dynamic> data = docSnapshot.data();
//       clientJobs.add(data?["jobId"]);
//     }
//   });
//   clientJobs.forEach((element) {print(element);});
//
//   await db.collection("jobids").where(
//       "worker",isEqualTo: credentials[0].address.toString()).get().then((querySnapshot) {
//     print("Successfully completed");
//     for (var docSnapshot in querySnapshot.docs) {
//       print('${docSnapshot.id} => ${docSnapshot.data()}');
//       Map<String, dynamic> data=docSnapshot.data();
//       workerJobs.add(data?["jobId"]);
//     }
//   });
//   workerJobs.forEach((element) {print(element);});
// }
// void pushJob(FireJob job, EthereumAddress client) async{
  // await db.collection("jobs").add(job.toFirestore()).then((DocumentReference doc)=>
  //     print('DocumentSnapshot added with ID: ${doc.id}')).catchError((error){print(error);});
  // await db.collection("jobids").add({"client": client.toString(),"worker": "0x"+"0"*40, "jobId": job.jobId}).then((DocumentReference doc)=>
  //     print('DocumentSnapshot added with ID: ${doc.id}')).catchError((error){print(error);});
// }

// class FireJob{
//   FireJob(String indesc,String incategory, String indelivery,int injobId)
//       : desc=indesc,
//         category=incategory,
//         delivery=indelivery,
//         jobId=injobId;
//
//   final String desc;
//   final String category;
//   final String delivery;
//   final int jobId;
//
//   factory FireJob.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot){
//     final data = snapshot.data();
//     return FireJob(data?["desc"], data?["category"], data?["delivery"], data?["jobId"]);
//   }
//   Map<String,dynamic> toFirestore(){
//     return {
//       "desc":desc,
//       "category":category,
//       "delivery":delivery,
//       "jobId":jobId
//     };
//   }
//
// }