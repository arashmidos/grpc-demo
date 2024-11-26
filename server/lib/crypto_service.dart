import 'dart:math';

import 'package:protos/protos.dart';

class CryptoService extends CryptoServiceBase {
  @override
  Future<Crypto> getCryptoById(ServiceCall call, GetCryptoByIdRequest request) async {
    print('[INFO] /getCryptoById called with id: ${request.id}');

    final price = Random().nextDouble() * 100000;
    final crypto = Crypto(
      id: request.id,
      name: 'Bitcoin',
      price: price,
    );
    return crypto;
  }

  @override
  Stream<Crypto> getCryptoStream(ServiceCall call, GetCryptoByIdRequest request) async* {
    print('[INFO] /getCryptoStream called with id: ${request.id}');

    while (true) {
      final id = Random().nextInt(100);

      final crypto = Crypto(
        id: id,
        name: 'Crypto $id',
        price: Random().nextDouble() * 90000,
      );

      yield crypto;

      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
