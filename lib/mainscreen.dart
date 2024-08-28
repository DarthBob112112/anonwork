import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart';
import 'package:webthree/browser.dart';
import 'package:webthree/webthree.dart';
import 'package:webthree/json_rpc.dart';

import 'test.g.dart';
import 'envs.dart';

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
  late Test contractAbi;
  String contractAddress="0x04bd1B0A5f63e8523824c87d822e31CB20632228";

  Future<DeployedContract> getContract() async {
    // Obtain our smart contract using rootbundle to access our json file
    String abiFile = await rootBundle.loadString("test.abi.json");
    final contract = DeployedContract(ContractAbi.fromJson(abiFile, "WorkNet"),
        EthereumAddress.fromHex(contractAddress));

    return contract;
  }

  Future<void> getDiff() async {
    var money = await contractAbi.get();
    print(money);
  }
  Future<void> updateDiff() async {
    var money = await contractAbi.update("another one", credentials: credentials[0]);
    print(money);
  }
  Future<void> init_meta() async{
    eth=window.ethereum!;

    serv=eth.asRpcService();
    client = Web3Client.custom(serv);
    credentials=await eth.requestAccounts();
    contractAbi = await Test(
        address: EthereumAddress.fromHex(contractAddress), client: ethClient);
  }
  void metamask() async{
    await init_meta();
    print("this is $credentials, ${credentials.runtimeType.toString()} ${credentials[0].runtimeType.toString()}");
    print(contractAbi.chainId);
    await getDiff();
    await updateDiff();
    await getDiff();

  }

  @override
  Widget build(BuildContext context) {
    metamask();

    return const Placeholder();
  }
}
