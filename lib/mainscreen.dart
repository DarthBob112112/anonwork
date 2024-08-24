import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';
import 'test.g.dart';

late Client httpClient;
late Web3Client ethClient;
final String myAddress = "0xA2581Fe4dCf0E224A43CCe62fFBab566f80632fF";
final String blockchainUrl = "https://rpc.open-campus-codex.gelato.digital/";
String returned="";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(
        blockchainUrl,
        httpClient);
    // getTotalVotes();
    super.initState();
  }
  Future<DeployedContract> getContract() async {
    // Obtain our smart contract using rootbundle to access our json file
    String abiFile = await rootBundle.loadString("test.abi.json");
    String contractAddress = "0x04bd1B0A5f63e8523824c87d822e31CB20632228";
    final contract = DeployedContract(ContractAbi.fromJson(abiFile, "WorkNet"),
        EthereumAddress.fromHex(contractAddress));

    return contract;
  }
  Future<List<dynamic>> callFunction(String name, List<dynamic> pars) async {
    final contract = await getContract();
    final function = contract.function(name);
    final result = await ethClient
        .call(contract: contract, function: function, params: pars);
    return result;
  }
  Future<void> getString() async {
    List<dynamic> resultsA = await callFunction("get",[]);
    returned=resultsA[0];
    print(returned);
    setState(() {});
  }
  Future<void> setString() async {
    List<dynamic> resultsA = await callFunction("set",["this is the string now"]);
    // returned = resultsA[0];
    print(resultsA);
  }
  Future<void> getDiff() async {
    String contractAddress="0x04bd1B0A5f63e8523824c87d822e31CB20632228";
    var contractAbi = await Test(
        address: EthereumAddress.fromHex(contractAddress), client: ethClient);
    var money = await contractAbi.get();
    print(money);
  }
  Future<void> updateDiff() async {
    String contractAddress="0x04bd1B0A5f63e8523824c87d822e31CB20632228";
    var contractAbi = await Test(
        address: EthereumAddress.fromHex(contractAddress), client: ethClient);
    // var money = await contractAbi.update(new_str:"the new string", credentials: credentials);
    // print(money);
  }

  @override
  Widget build(BuildContext context) {
    // getString();
    // setString().then((value) => getString());
    // getString();
    getDiff();
    return const Placeholder();
  }
}
