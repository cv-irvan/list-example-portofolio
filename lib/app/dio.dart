import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GetWithDio extends StatefulWidget {
  const GetWithDio({super.key});

  @override
  State<GetWithDio> createState() => _GetWithDioState();
}

class _GetWithDioState extends State<GetWithDio> {
  final api = ApiDio();

  ProvinsiModel? provinsi;

  UploadModel? responseUpload;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                ProvinsiModel response = await api.getProvinsi();

                setState(() {
                  provinsi = response;
                });
              },
              child: Text(provinsi == null ? "get data" : provinsi!.status!),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                openCamera();
              },
              child: const Text("post Image"),
            ),
            const SizedBox(
              height: 20,
            ),
            responseUpload == null
                ? const SizedBox()
                : SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(responseUpload!.media!.link!),
                  ),
          ],
        ),
      ),
    );
  }

  Future openCamera() async {
    final ImagePicker picker = ImagePicker();

    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    UploadModel response = await api.upload(foto: File(photo!.path));

    setState(() {
      responseUpload = response;
    });
  }
}

class ApiDio {
  final client = Dio();

  Future<ProvinsiModel> getProvinsi() async {
    try {
      var response = await Dio().getUri(
        Uri(
          scheme: "https",
          host: "feriirawan-api.herokuapp.com",
          path: "/list/symbols/regency/200",
        ),
        options: dioOptions(
          token: "asdkfh0q234nfoqwkehfoiqwdsfascd",
        ),
      );

      if (response.statusCode == 200) {
        return ProvinsiModel.fromJson(response.data);
      } else {
        return ProvinsiModel(
            message: "kesalahan server / mobile", status: "Gagal");
      }
    } on DioError {
      return ProvinsiModel(message: "TimeOut", status: "TimeOut");
    }
  }

  Future<UploadModel> upload({required File foto}) async {
    print("====================");
    try {
      print("try");
      var formData = FormData.fromMap({
        'foto': await MultipartFile.fromFile(foto.path),
      });

      var response = await Dio().postUri(
        Uri(
          scheme: "https",
          host: "pengembang.gdc.co.id",
          port: 8995,
          path: "/merchant/upload_file/registrasi",
        ),
        data: formData,
      );

      log("hasil response $response");

      if (response.statusCode == 200) {
        return UploadModel.fromJson(response.data);
      } else {
        return UploadModel(rcDesc: "kesalahan server / mobile", rc: "06");
      }
    } on DioError {
      print("dio error");
      return UploadModel(rcDesc: "TimeOut", rc: "08");
    }
  }
}

class ProvinsiModel {
  String? status;
  String? message;
  String? author;
  String? source;
  String? repository;
  List<Lambang>? lambang;

  ProvinsiModel(
      {this.status,
      this.message,
      this.author,
      this.source,
      this.repository,
      this.lambang});

  ProvinsiModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    author = json['author'];
    source = json['source'];
    repository = json['repository'];
    if (json['lambang'] != null) {
      lambang = <Lambang>[];
      json['lambang'].forEach((v) {
        lambang!.add(Lambang.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['author'] = author;
    data['source'] = source;
    data['repository'] = repository;
    if (lambang != null) {
      data['lambang'] = lambang!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Lambang {
  int? index;
  String? title;
  String? url;

  Lambang({this.index, this.title, this.url});

  Lambang.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['index'] = index;
    data['title'] = title;
    data['url'] = url;
    return data;
  }
}

dioOptions({required String? token}) {
  Options options = Options(
    receiveDataWhenStatusError: true,
    sendTimeout: 30 * 1000,
    receiveTimeout: 30 * 1000,
    headers: {
      "gdc-token": token,
    },
  );

  return options;
}

class UploadModel {
  String? rc;
  String? rcDesc;
  Media? media;

  UploadModel({this.rc, this.rcDesc, this.media});

  UploadModel.fromJson(Map<String, dynamic> json) {
    rc = json['rc'];
    rcDesc = json['rc_desc'];
    media = json['media'] != null ? Media.fromJson(json['media']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rc'] = rc;
    data['rc_desc'] = rcDesc;
    if (media != null) {
      data['media'] = media!.toJson();
    }
    return data;
  }
}

class Media {
  int? idShare;
  String? link;
  String? path;
  String? token;
  String? name;

  Media({this.idShare, this.link, this.path, this.token, this.name});

  Media.fromJson(Map<String, dynamic> json) {
    idShare = json['id_share'];
    link = json['link'];
    path = json['path'];
    token = json['token'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_share'] = idShare;
    data['link'] = link;
    data['path'] = path;
    data['token'] = token;
    data['name'] = name;
    return data;
  }
}
