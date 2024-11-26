import 'dart:math';

import 'package:flutter/material.dart';
import 'package:protos/protos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ClientChannel _channel;
  late CryptoServiceClient client;

  Crypto? crypto;

  Stream<Crypto>? cryptoStream;

  @override
  void initState() {
    super.initState();
    _channel = ClientChannel('192.168.178.121',
        port: 50001,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ));

    client = CryptoServiceClient(_channel);

    cryptoStream = client.getCryptoStream(GetCryptoByIdRequest(id: 1));
  }

  Future<void> _getCrypto() async {
    final id = Random().nextInt(100);
    final result = await client.getCryptoById(GetCryptoByIdRequest(id: id));

    setState(() {
      crypto = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Get Crypto by ID:'),
            const SizedBox(height: 16),
            crypto != null ? Text('${crypto!.id} \n${crypto!.name} \n${crypto!.price}') : Text('Press FAB button'),
            const SizedBox(height: 32),
            Text('------------------'),
            Text('Stream from Server:'),
            StreamBuilder(stream: cryptoStream, builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data as Crypto;
                return Column(
                  children: [
                    Text(data.name),
                    Text(data.id.toString()),
                    Text(data.price.toString()),
                  ],
                );
              } else {
                return Text('Loading');
              }
            })

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCrypto,
        tooltip: 'Get Crypto',
        child: const Icon(Icons.add),
      ),
    );
  }
}
