import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';

import '../proto/calculator.pbgrpc.dart';

class Grpc extends StatefulWidget {
  const Grpc({Key? key}) : super(key: key);

  @override
  State<Grpc> createState() => _GrpcState();
}

class _GrpcState extends State<Grpc> {
  Message? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result == null ? "Belum Get" : result!.value.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => _callgrpc(),
              child: const Text('get'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _callgrpc() async {
    final channel = ClientChannel(
      '192.168.1.41',
      port: 6969,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    var response = await CalculatorClient(channel)
        .squareRoot(Number(value: Random().nextInt(100000).toDouble()));

    setState(() {
      result = response;
    });

    await channel.shutdown();
  }
}
