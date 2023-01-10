import 'dart:async';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopee extends StatefulWidget {
  const Shopee({super.key});

  @override
  State<Shopee> createState() => _ShopeeState();
}

class _ShopeeState extends State<Shopee> {
  final Color oren = const Color(0xffee4d2d);
  final Color merah = const Color(0xffd0011d);
  final Color putih = Colors.white;
  final Color hitam = const Color(0xff1C1E1D);
  final Color abu = const Color(0xffBBBBBB);
  final Color semiabu = const Color(0xffE8E8E8);

  final random = Random();

  ScrollController appBarScrollController = ScrollController();
  double scrollAppBarPosition = 0;
  double appBarOpacity = 0;

  List<String> lBanner = [
    "https://cf.shopee.co.id/file/2383aa5c24d77dc56270ca01b2a643d6",
    "https://cf.shopee.co.id/file/8842289d74b6e0f6174c6b1a5be3fe1b",
    "https://cf.shopee.co.id/file/b36ea0e504889fbfe4d16e5434709175",
    "https://cf.shopee.co.id/file/ccfe421bb3c616ab3a9ad8ddbc1dca1e",
    "https://cf.shopee.co.id/file/3f22a0b5dda8e8b1f12ab7e776a3fe69",
  ];

  List<Map<String, dynamic>> lMenu = [
    {
      "img":
          "https://cf.shopee.co.id/file/4497ac7ff3ee9711a8d512d0f8297b49_xxhdpi",
      "nama": "Gratis Ongkir & Vocher",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/290f4d62d444f140999c83dfff62e135_xxhdpi",
      "nama": "Hadiah Shopee",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/bad662e00201d16093ed8011ddf900f1_xxhdpi",
      "nama": "Pulsa, Tagihan & Tiket",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/9daa6197541333ec258f227ed8d0bf71_xxhdpi",
      "nama": "Shopee Food",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/d16f8f90527bd9702d085d7a8f26811a_xxhdpi",
      "nama": "Shopee Mall",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/683b716ad572f9b1adbce06b69571c53_xxhdpi",
      "nama": "Shopee Pilih Lokal",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/d9ec06fb6e5b0cc350ef6c9641c6f74b_xxhdpi",
      "nama": "ShopeePay Sekitarmu",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/b30deb8f659fbee0362c64dc403cea96_xxhdpi",
      "nama": "SPayLater",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/6d71719b1bc437acaaef4024192c4162_xxhdpi",
      "nama": "Transafer ShopeePay",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/bfafe4299587bac7c5b40c16184a5325_xxhdpi",
      "nama": "Shopee Xpress Instant",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/d38815fe0e030e787cf2e0508d3e8c80_xxhdpi",
      "nama": "Shopee Supermarket",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/c4f04aa04231e2fbf81d50062d6af71c_xxhdpi",
      "nama": "Shopee Live",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/779930c7854dcfe3d5f8227ee11baeb0_xxhdpi",
      "nama": "Flash Sale",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/7182a8109033d5d290363ec59c6e770e_xxhdpi",
      "nama": "Serba Seribu",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/12c9571aaf93404afaaf9b46ef2bb345_xxhdpi",
      "nama": "Bayar Di Tempat",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/7dc2216b376724a2e008cc826e9c764a_xxhdpi",
      "nama": "Shopee Moms CLub",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/4447bdcba3c51c693feef4f22ba05c49_xxhdpi",
      "nama": "inFashion",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/fe02a504f64b146f90af16947ae65d08_xxhdpi",
      "nama": "Elektronik 100% ORI",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/4e08bce7d8d6ab488b82ab59d03cb793_xxhdpi",
      "nama": "Murah Lebay",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/4b9a2347aacc91932cabe25233e225b8_xxhdpi",
      "nama": "Keuangan",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/f5110de99abe239d002312a813ddb4ca_xxhdpi",
      "nama": "Dikelola Shopee",
    },
    {
      "img":
          "https://cf.shopee.co.id/file/60434906cac999e73fdcc78c8f484467_xxhdpi",
      "nama": "Semua Promo",
    },
  ];

  @override
  void initState() {
    appBarScrollController.addListener(() {
      setState(() {
        scrollAppBarPosition = appBarScrollController.position.pixels;
      });
    });

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {});
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (scrollAppBarPosition / Get.width * 0.40 < 0) {
      appBarOpacity = 0;
    } else {
      appBarOpacity = scrollAppBarPosition < Get.width * 0.40
          ? scrollAppBarPosition / (Get.width * 0.40)
          : 1;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: oren.withOpacity(appBarOpacity),
        elevation: 0,
        title: SizedBox(
          height: 42,
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Cari di Shopee',
              hintStyle: GoogleFonts.oxygen(),
              contentPadding: const EdgeInsets.only(top: 15),
              filled: true,
              fillColor: putih,
              prefixIcon: const Icon(
                CupertinoIcons.search,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_rounded,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: lBanner
                    .map(
                      (e) => Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(e),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  aspectRatio: 16 / 8,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 70,
                color: merah,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 190,
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 10, right: 10),
              itemCount: lMenu.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      lMenu[i]['img'],
                      width: 42,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      lMenu[i]['nama'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oxygen(fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
