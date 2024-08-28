import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart';
import 'package:webthree/browser.dart';
import 'package:webthree/webthree.dart';
import 'package:webthree/json_rpc.dart';

import 'contract.g.dart';
// import 'envs.dart';

late Client httpClient;
late Web3Client ethClient;

String returned="";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // var metamask = MetaMask();
  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(
        blockchainUrl,
        httpClient);
    // getTotalVotes();
    super.initState();
  }
  late Ethereum eth;
  late RpcService serv;
  late Web3Client client;
  late List<dynamic> credentials;
  late Contract contractAbi;
  final String contractAddress="0x9ecEA68DE55F316B702f27eE389D10C2EE0dde84";
  final String blockchainUrl = "https://rpc.open-campus-codex.gelato.digital/";

  Future<DeployedContract> getContract() async {
    // Obtain our smart contract using rootbundle to access our json file
    String abiFile = await rootBundle.loadString("contract.abi.json");

    final contract = DeployedContract(ContractAbi.fromJson(abiFile, "JobMarketplace"),
        EthereumAddress.fromHex(contractAddress));

    return contract;
  }

  // Future<void> getDiff() async {
  //   var money = await contractAbi.get();
  //   print(money);
  // }
  // Future<void> updateDiff() async {
  //   var money = await contractAbi.update("another one", credentials: credentials[0]);
  //   print(money);
  // }
  Future<void> accept(BigInt jobId, EthereumAddress address) async {
    var money = await contractAbi.acceptJob(jobId, address, credentials: credentials[0]);
    print(money);
  }
  Future<void> approve(BigInt jobId, EthereumAddress address) async {
    var money = await contractAbi.approveJob(jobId, address, credentials: credentials[0]);
    print(money);
  }
  Future<void> complete(BigInt jobId, EthereumAddress address) async {
    var money = await contractAbi.completeJob(jobId, address, credentials: credentials[0]);
    print(money);
  }
  Future<void> post(BigInt amt, EthereumAddress address) async {
    var money = await contractAbi.postJob(amt, address, credentials: credentials[0]).catchError((error)=> print(error));
    print(money);
  }
  Future<void> init_meta() async{
    eth=window.ethereum!;

    serv=eth.asRpcService();
    client = Web3Client.custom(serv);
    credentials=await eth.requestAccounts();
    contractAbi = await Contract(
        address: EthereumAddress.fromHex(contractAddress), client: ethClient);
  }
  void metamask() async{
    await init_meta();
    print("this is $credentials, ${credentials[0].address},  ${credentials.runtimeType.toString()}, ${credentials[0].runtimeType.toString()}");
    // print(contractAbi.read(sender, function, params, atBlock));
    // await getDiff();
    // await updateDiff();
    // await getDiff();
    await post(5 as BigInt, credentials[0].address);

  }

  @override
  Widget build(BuildContext context) {
    metamask();

    return const Placeholder();
  }
}
