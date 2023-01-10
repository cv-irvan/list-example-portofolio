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
  MyResponse? result;

  // ProvinsiModel? resulthttp;

  bool load = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = null;
                  // resulthttp = null;
                });
              },
              child: const Text('remove'),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            ElevatedButton(
              onPressed: () => _callgrpc(),
              child: const Text('grpc'),
            ),
            // ElevatedButton(
            //   onPressed: () => getProvinsi(),
            //   child: const Text('http'),
            // ),
            //   ],
            // ),
            Visibility(
              visible: load,
              child: const CircularProgressIndicator(),
            ),
            // Expanded(
            //   child: Row(
            //     children: [
            Expanded(
              // flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: result == null
                    ? []
                    : result!.provinsi
                        .map((e) => Text(
                            "${e.kodeProvinsi} || ${result!.provinsi.indexOf(e)} ||  ${result!.provinsi[result!.provinsi.indexOf(e)].namaProvinsi}"))
                        .toList(),
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Center(
            //       child: Text(resulthttp == null
            //           ? ""
            //           : "http : ${resulthttp!.rcDesc}")),
            //   // child: Column(
            //   //   crossAxisAlignment: CrossAxisAlignment.end,
            //   //   children: resulthttp == null
            //   //       ? []
            //   //       : resulthttp!.provinsi!
            //   //           .map((e) => Text("|| ${e.namaProvinsi} "))
            //   //           .toList(),
            //   // ),
            // )
            //   ],
            // ),
            // )
          ],
        ),
      ),
    );
  }

  Future<void> _callgrpc() async {
    final channel = ClientChannel(
      '192.168.127.5',
      port: 6969,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    var response =
        await CalculatorClient(channel).getProvinsi(InputGetProvinsi());

    setState(() {
      result = response;
      load = false;
      print(response);
    });

    await channel.shutdown();
  }

  // void getProvinsi() async {
  //   setState(() {
  //     resulthttp = null;
  //   });
  //   var response = await client
  //       .get(Uri.parse("http://192.168.127.5:8080/master/provinsi"));

  //   setState(() {
  //     resulthttp = ProvinsiModel.fromJson(json.decode(response.body));
  //   });
  // }
}


// class ProvinsiModel {
//   String? rc;
//   String? rcDesc;
//   List<Provinsi>? provinsi;

//   ProvinsiModel({this.rc, this.rcDesc, this.provinsi});

//   ProvinsiModel.fromJson(Map<String, dynamic> json) {
//     rc = json['rc'];
//     rcDesc = json['rc_desc'];
//     if (json['provinsi'] != null) {
//       provinsi = <Provinsi>[];
//       json['provinsi'].forEach((v) {
//         provinsi!.add(Provinsi.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['rc'] = rc;
//     data['rc_desc'] = rcDesc;
//     if (provinsi != null) {
//       data['provinsi'] = provinsi!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Provinsi {
//   String? kodeProvinsi;
//   String? namaProvinsi;

//   Provinsi({this.kodeProvinsi, this.namaProvinsi});

//   Provinsi.fromJson(Map<String, dynamic> json) {
//     kodeProvinsi = json['kode_provinsi'];
//     namaProvinsi = json['nama_provinsi'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['kode_provinsi'] = kodeProvinsi;
//     data['nama_provinsi'] = namaProvinsi;
//     return data;
//   }
// }
