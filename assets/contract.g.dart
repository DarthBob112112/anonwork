// Generated code, do not modify. Run `build_runner build` to re-generate!
// @dart=2.12
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:webthree/webthree.dart' as _i1;

final _contractAbi = _i1.ContractAbi.fromJson(
  '[{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_worker","type":"address"}],"name":"acceptJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_client","type":"address"}],"name":"approveJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_worker","type":"address"}],"name":"completeJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"client","type":"address"}],"name":"JobApproved","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"worker","type":"address"}],"name":"JobCompleted","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"jobId","type":"uint256"},{"indexed":false,"internalType":"address","name":"client","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"JobPosted","type":"event"},{"inputs":[{"internalType":"uint256","name":"amt","type":"uint256"},{"internalType":"address payable","name":"_cli","type":"address"}],"name":"postJob","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"jobId","type":"uint256"},{"internalType":"address payable","name":"_client","type":"address"}],"name":"rejectJob","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"},{"inputs":[],"name":"jobCounter","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"jobs","outputs":[{"internalType":"address payable","name":"client","type":"address"},{"internalType":"address payable","name":"worker","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"},{"internalType":"uint256","name":"status","type":"uint256"}],"stateMutability":"view","type":"function"}]',
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
    BigInt jobId,
    _i1.EthereumAddress _client, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[1];
    assert(checkSignature(function, '015afa9b'));
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

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> completeJob(
    BigInt jobId,
    _i1.EthereumAddress _worker, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[2];
    assert(checkSignature(function, '6a6b67d1'));
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
  Future<String> postJob(
    BigInt amt,
    _i1.EthereumAddress _cli, {
    required _i1.Credentials credentials,
    _i1.Transaction? transaction,
  }) async {
    final function = self.abi.functions[3];
    assert(checkSignature(function, '6892f433'));
    final params = [
      amt,
      _cli,
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
  Future<BigInt> jobCounter({
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[5];
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
  Future<Jobs> jobs(
    BigInt $param10, {
    _i1.BlockNum? atBlock,
    _i1.EthereumAddress? sender,
  }) async {
    final function = self.abi.functions[6];
    assert(checkSignature(function, '180aedf3'));
    final params = [$param10];
    final response = await read(
      sender,
      function,
      params,
      atBlock,
    );
    return Jobs(response);
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
        status = (response[3] as BigInt);

  final _i1.EthereumAddress client;

  final _i1.EthereumAddress worker;

  final BigInt amount;

  final BigInt status;
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
