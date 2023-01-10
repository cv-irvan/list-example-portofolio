import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdam/app/pdam.dart';

import 'app/face/detector_views.dart';
import 'app/face/entity_extraction_view.dart';
import 'app/face/language_identifier_view.dart';
import 'app/face/language_translator_view.dart';
import 'app/face/object_detector_view.dart';
import 'app/face/selfie_segmenter_view.dart';
import 'app/face/smart_reply_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff1b1e23, {
          50: Color(0xff1b1e23),
          100: Color(0xff1b1e23),
          200: Color(0xff1b1e23),
          300: Color(0xff1b1e23),
          400: Color(0xff1b1e23),
          500: Color(0xff1b1e23),
          600: Color(0xff1b1e23),
          700: Color(0xff1b1e23),
          800: Color(0xff1b1e23),
          900: Color(0xff1b1e23)
        }),
      ),
      title: "irvan.co.id",
      home: const PDAM(),
    ),
  );
}

List<CameraDescription> cameras = [];

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   cameras = await availableCameras();

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google ML Kit Demo App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ExpansionTile(
                    title: const Text('Vision APIs'),
                    children: [
                      CustomCard('Barcode Scanning', BarcodeScannerView()),
                      CustomCard('Face Detection', FaceDetectorView()),
                      CustomCard('Image Labeling', ImageLabelView()),
                      CustomCard('Object Detection', ObjectDetectorView()),
                      CustomCard('Text Recognition', TextRecognizerView()),
                      CustomCard('Digital Ink Recognition', DigitalInkView()),
                      CustomCard('Pose Detection', PoseDetectorView()),
                      CustomCard('Selfie Segmentation', SelfieSegmenterView()),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text('Natural Language APIs'),
                    children: [
                      CustomCard('Language ID', LanguageIdentifierView()),
                      CustomCard(
                          'On-device Translation', LanguageTranslatorView()),
                      CustomCard('Smart Reply', SmartReplyView()),
                      CustomCard('Entity Extraction', EntityExtractionView()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String _label;
  final Widget _viewPage;
  final bool featureCompleted;

  const CustomCard(this._label, this._viewPage,
      {super.key, this.featureCompleted = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: Theme.of(context).primaryColor,
        title: Text(
          _label,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          if (!featureCompleted) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('This feature has not been implemented yet')));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => _viewPage));
          }
        },
      ),
    );
  }
}
