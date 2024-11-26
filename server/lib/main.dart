import 'package:protos/protos.dart';

import 'crypto_service.dart';

Future<void> main() async {
  final server = Server.create(
    services: [
      CryptoService(),
    ],
  );
  await server.serve(port: 50001);
  print('Server is listening on port 50001');
}
