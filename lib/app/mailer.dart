import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class Mailer extends StatefulWidget {
  const Mailer({super.key});

  @override
  State<Mailer> createState() => _MailerState();
}

class _MailerState extends State<Mailer> {
  @override
  void initState() {
    fristmail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => fristmail(),
          child: const Text("Sand Mail"),
        ),
      ),
    );
  }
}

Future<void> fristmail() async {
  final server = await createServer();
  print('Server started: ${server.address} port ${server.port}');
  await _handleRequests(server);
}

Future<HttpServer> createServer() async {
  final address = InternetAddress.loopbackIPv4;
  const port = 4040;
  return await HttpServer.bind(address, port);
}

Future<void> _handleRequests(HttpServer server) async {
  await for (HttpRequest request in server) {
    if (request.method == 'POST' && request.uri.path == '/contact') {
      _handleContactPost(request);
    } else {
      _handleBadRequest(request);
    }
  }
}

void _handleBadRequest(HttpRequest request) {
  request.response
    ..statusCode = HttpStatus.badRequest
    ..write('Bad request')
    ..close();
}

Future<void> _handleContactPost(HttpRequest request) async {
  final body = await utf8.decodeStream(request);

  const username = 'cvirvanc@irvan.co.id';
  const password = 'jz27HoU7bN*6#Y';
  final smtpServer = SmtpServer(
    'mail.irvan.co.id',
    port: 465,
    username: username,
    password: password,
  );

  final message = Message()
    ..from = const Address(username, 'Suragch')
    ..recipients.add('irvanpartii@gmail.com')
    ..subject = 'New POST message from user'
    ..text = body;

  int statusCode;
  try {
    final sendReport = await send(message, smtpServer);
    print(sendReport.toString());
    statusCode = HttpStatus.ok;
  } on MailerException catch (e) {
    print('Message not sent: $e');
    statusCode = HttpStatus.internalServerError;
  }

  request.response
    ..statusCode = statusCode
    ..close();
}
