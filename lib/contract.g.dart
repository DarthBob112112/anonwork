// Generated code, do not modify. Run `build_runner build` to re-generate!
// @dart=2.12
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:webthree/webthree.dart' as _i1;

final _contractAbi = _i1.ContractAbi.fromJson(
  '[{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_worker","type":"address"}],"name":"acceptJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"}],"name":"approveJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"}],"name":"completeJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"client","type":"address"}],"name":"JobApproved","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"worker","type":"address"}],"name":"JobCompleted","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"client","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"JobPosted","type":"event"},{"inputs":[{"internalType":"uint256","name":"amt","type":"uint256"},{"internalType":"address payable","name":"_cli","type":"address"},{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"string","name":"desc","type":"string"},{"internalType":"string","name":"category","type":"string"},{"internalType":"string","name":"deadline","type":"string"}],"name":"postJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_client","type":"address"}],"name":"rejectJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"clientJobs","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"deposits","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"getBalance","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address payable","name":"client","type":"address"}],"name":"getClientJobs","outputs":[{"internalType":"uint256[]","name":"","type":"uint256[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"}],"name":"getJob","outputs":[{"components":[{"internalType":"address payable","name":"client","type":"address"},{"internalType":"address payable","name":"worker","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"},{"internalType":"uint256","name":"status","type":"uint256"},{"internalType":"string","name":"desc","type":"string"},{"internalType":"string","name":"category","type":"string"},{"internalType":"string","name":"deadline","type":"string"}],"internalType":"struct JobMarketplace.Job","name":"","type":"tuple"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getJobIds","outputs":[{"internalType":"uint256[]","name":"","type":"uint256[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getListing","outputs":[{"internalType":"uint256[]","name":"","type":"uint256[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address payable","name":"worker","type":"address"}],"name":"getWorkerJobs","outputs":[{"internalType":"uint256[]","name":"","type":"uint256[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"jobCounter","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"jobIds","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"jobs","outputs":[{"internalType":"address payable","name":"client","type":"address"},{"internalType":"address payable","name":"worker","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"},{"internalType":"uint256","name":"status","type":"uint256"},{"internalType":"string","name":"desc","type":"string"},{"internalType":"string","name":"category","type":"string"},{"internalType":"string","name":"deadline","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"workerJobs","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}]',
  'Contract',
);

class Contract extends _i1.GeneratedContract {
  Contract({
    required _i1.EthereumAddress address,
    required _i1.Web3Client client,
    int? chainId,
  }) : super(
          _i1.DeployedContract(
            _contractAbi,
            address,
          ),
          client,
          chainId,
        );

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> acceptJob(
    BigInt jobId,
    _i1.EthereumAddress _worker, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[0];
    assert(checkSignature(function, 'd7d86727'));
    final params = [
      jobId,
      _worker,
    ];
    return write(
      credentials,
      transaction,
      function,
      params,
    );
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> approveJob(
    BigInt jobId, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[1];
    assert(checkSignature(function, '4bd23b9e'));
    final params = [jobId];
    return write(
      credentials,
      transaction,
      function,
      params,
    );
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> completeJob(
    BigInt jobId, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[2];
    assert(checkSignature(function, 'a1c0d32f'));
    final params = [jobId];
    return write(
      credentials,
      transaction,
      function,
      params,
    );
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> postJob(
    BigInt amt,
    _i1.EthereumAddress _cli,
    BigInt jobId,
    String desc,
    String category,
    String deadline, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[3];
    assert(checkSignature(function, 'eb90d495'));
    final params = [
      amt,
      _cli,
      jobId,
      desc,
      category,
      deadline,
    ];
    return write(
      credentials,
      transaction,
      function,
      params,
    );
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> rejectJob(
    BigInt jobId,
    _i1.EthereumAddress _client, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[4];
    assert(checkSignature(function, '9ecb63d6'));
    final params = [
      jobId,
      _client,
    ];
    return write(
      credentials,
      transaction,
      function,
      params,
    );
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> clientJobs(
    _i1.EthereumAddress $param12,
    BigInt $param13, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[5];
    assert(checkSignature(function, '8facd859'));
    final params = [
      $param12,
      $param13,
    ];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> deposits(
    _i1.EthereumAddress $param14, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[6];
    assert(checkSignature(function, 'fc7e286d'));
    final params = [$param14];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> getBalance(
    _i1.EthereumAddress account, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[7];
    assert(checkSignature(function, 'f8b2cb4f'));
    final params = [account];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<BigInt>> getClientJobs(
    _i1.EthereumAddress client, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[8];
    assert(checkSignature(function, 'cf2646c2'));
    final params = [client];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as List<dynamic>).cast<BigInt>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<dynamic> getJob(
    BigInt jobId, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[9];
    assert(checkSignature(function, 'bf22c457'));
    final params = [jobId];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as dynamic);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<BigInt>> getJobIds({
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[10];
    assert(checkSignature(function, '4b0fa847'));
    final params = [];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as List<dynamic>).cast<BigInt>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<BigInt>> getListing({
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[11];
    assert(checkSignature(function, 'e0a41cf2'));
    final params = [];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as List<dynamic>).cast<BigInt>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<BigInt>> getWorkerJobs(
    _i1.EthereumAddress worker, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[12];
    assert(checkSignature(function, '06d004ef'));
    final params = [worker];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as List<dynamic>).cast<BigInt>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> jobCounter({
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[13];
    assert(checkSignature(function, '50355d76'));
    final params = [];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> jobIds(
    BigInt $param19, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[14];
    assert(checkSignature(function, '4162cc88'));
    final params = [$param19];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<Jobs> jobs(
    BigInt $param20, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[15];
    assert(checkSignature(function, '180aedf3'));
    final params = [$param20];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return Jobs(response);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> workerJobs(
    _i1.EthereumAddress $param21,
    BigInt $param22, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[16];
    assert(checkSignature(function, '6e59ef7a'));
    final params = [
      $param21,
      $param22,
    ];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return (response[0] as BigInt);
  }

  /// Returns a live stream of all JobApproved events emitted by this contract.
  Stream<JobApproved> jobApprovedEvents({
    _i1.BlockNum? fromBlock,
    _i1.BlockNum? toBlock,
  }) {
    final event = self.event('JobApproved');
    final filter = _i1.FilterOptions.events(
      contract: self,
      event: event,
      fromBlock: fromBlock,
      toBlock: toBlock,
    );
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(
        result.topics!,
        result.data!,
      );
      return JobApproved(decoded);
    });
  }

  /// Returns a live stream of all JobCompleted events emitted by this contract.
  Stream<JobCompleted> jobCompletedEvents({
    _i1.BlockNum? fromBlock,
    _i1.BlockNum? toBlock,
  }) {
    final event = self.event('JobCompleted');
    final filter = _i1.FilterOptions.events(
      contract: self,
      event: event,
      fromBlock: fromBlock,
      toBlock: toBlock,
    );
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(
        result.topics!,
        result.data!,
      );
      return JobCompleted(decoded);
    });
  }

  /// Returns a live stream of all JobPosted events emitted by this contract.
  Stream<JobPosted> jobPostedEvents({
    _i1.BlockNum? fromBlock,
    _i1.BlockNum? toBlock,
  }) {
    final event = self.event('JobPosted');
    final filter = _i1.FilterOptions.events(
      contract: self,
      event: event,
      fromBlock: fromBlock,
      toBlock: toBlock,
    );
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(
        result.topics!,
        result.data!,
      );
      return JobPosted(decoded);
    });
  }
}

class Jobs {
  Jobs(List<dynamic> response)
      : client = (response[0] as _i1.EthereumAddress),
        worker = (response[1] as _i1.EthereumAddress),
        amount = (response[2] as BigInt),
        status = (response[3] as BigInt),
        desc = (response[4] as String),
        category = (response[5] as String),
        deadline = (response[6] as String);

  final _i1.EthereumAddress client;

  final _i1.EthereumAddress worker;

  final BigInt amount;

  final BigInt status;

  final String desc;

  final String category;

  final String deadline;

  Map<String,dynamic> toMap(){
    return {
      "client": client ,
      "worker": worker ,
      "amount": amount ,
      "status": status ,
      "desc": desc ,
      "category": category ,
      "deadline": deadline
    };
  }
}

class JobApproved {
  JobApproved(List<dynamic> response)
      : jobId = (response[0] as BigInt),
        client = (response[1] as _i1.EthereumAddress);

  final BigInt jobId;

  final _i1.EthereumAddress client;
}

class JobCompleted {
  JobCompleted(List<dynamic> response)
      : jobId = (response[0] as BigInt),
        worker = (response[1] as _i1.EthereumAddress);

  final BigInt jobId;

  final _i1.EthereumAddress worker;
}

class JobPosted {
  JobPosted(List<dynamic> response)
      : jobId = (response[0] as BigInt),
        client = (response[1] as _i1.EthereumAddress),
        amount = (response[2] as BigInt);

  final BigInt jobId;

  final _i1.EthereumAddress client;

  final BigInt amount;
}
