import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieImage extends StatefulWidget {
  const LottieImage({Key? key}) : super(key: key);

  @override
  State<LottieImage> createState() => _LottieImageState();
}

class _LottieImageState extends State<LottieImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie"),
        actions: const [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              showLoading();
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pop(context);
                showSukses();
              });
            },
            child: const Text("show dialog"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              showLoading();
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pop(context);
                showModelSukses();
              });
            },
            child: const Text("show modal"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              showLoading();
            },
            child: const Text("show loading"),
          ),
        ],
      ),
    );
  }

  void showLoading() async {
    await showDialog<void>(
      barrierColor: Colors.white.withOpacity(0.5),
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Lottie.asset(
            'assets/Loader.json',
            repeat: true,
            frameRate: FrameRate(60),
          ),
        );
      },
    );
  }

  void showModelSukses() async {
    await showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: const Color(0xFF288D2B),
          padding: const EdgeInsets.all(30.0),
          child: Wrap(
            children: [
              Container(
                color: const Color(0xFF288D2B),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Spacer(),
                    Lottie.asset(
                      'assets/sukses_putih.json',
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                      height: 300,
                    ),
                    const Text(
                      'Pembayaran Berhasil!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Pesanan anda akan segera kami proses.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Spacer(),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF288D2B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 45),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "OK",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showSukses() async {
    bool confirm = false;
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Lottie.network(
                  'https://assets1.lottiefiles.com/packages/lf20_sO9js3.json',
                  fit: BoxFit.fill,
                ),
                const Text(
                  'Pembayaran Berhasil!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Pesanan anda akan segera kami proses.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(MediaQuery.of(context).size.width, 45),
                ),
                onPressed: () {
                  confirm = true;
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ),
          ],
        );
      },
    );

    if (confirm) {
      print("Confirmed!");
    }
  }
}
