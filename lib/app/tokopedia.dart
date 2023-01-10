import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Tokopedia extends StatefulWidget {
  const Tokopedia({super.key});

  @override
  State<Tokopedia> createState() => _TokopediaState();
}

class _TokopediaState extends State<Tokopedia> {
  Color hijau = const Color(0xff00AA5B);
  Color hitam = const Color(0xff1C1E1D);
  Color semihitam = const Color(0xff494B4A);
  Color putih = const Color(0xffFFFFFF);
  Color semiputih = const Color(0xffFAFAFA);
  Color merah = const Color(0xffE9001E);
  Color biru = const Color(0xff0081A0);
  Color abu = const Color(0xffBBBBBB);
  Color semiabu = const Color(0xffE8E8E8);

  ScrollController appBarScrollController = ScrollController();
  double scrollAppBarPosition = 0;
  double appBarOpacity = 0;

  ScrollController diskonScrollController = ScrollController();
  double scrollDiskonPosition = 0;
  double diskonOpacity = 1;

  List<String> lSpesial = [
    "https://images.tokopedia.net/img/cache/400/RInQea/2022/9/15/3c421540-6df0-483b-bb83-3618927ecdcc.jpg.webp?ect=4g",
    "https://images.tokopedia.net/img/cache/400/RInQea/2022/9/15/002d07ae-f0b0-4ca8-93cd-b35d82b040c3.jpg.webp?ect=4g",
    "https://images.tokopedia.net/img/cache/400/RInQea/2022/9/15/2a09a930-734b-4cf2-a38b-a827ebec0db5.jpg.webp?ect=4g",
    "https://images.tokopedia.net/img/cache/400/RInQea/2022/9/15/493ed40f-9c08-4a39-9087-2331ed209d06.jpg.webp?ect=4g",
  ];

  List<Map<String, dynamic>> lmenu = [
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/6/2/66151281-c524-41c2-9a84-643071d00e97.png",
      "nama": "Official\nStore",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/25916fd0-94f8-467a-a0e4-be6049ba820d.png",
      "nama": "Lihat\nSemua",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/1/4/9335df70-51c2-4c79-94d0-12fb302d7faa.png",
      "nama": "Toserba",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/387357cf-0a46-4aed-bd8b-07804b73ee96.png",
      "nama": "Elektronik",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/ec5c92cb-6b3d-4643-b273-dcc431b388fc.png",
      "nama": "Top-Up &\nTagihan",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/5d3183b0-ca7e-4004-be96-51d78c9b8d75.png",
      "nama": "Travel &\n Entertaiment",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/40a65733-60b7-46f4-af28-1253e96803a3.png",
      "nama": "Keuangan",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/7aeaf92e-c3d4-436d-af75-1d720025818e.png",
      "nama": "Handphone\n& Tablet",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/3/2/bac24baf-d3bf-4dd8-8409-e777329fa602.png",
      "nama": "Gaming",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/2/9/c452499d-4119-4da6-8fb3-66fd48d1850c.png",
      "nama": "Komputer\n& Laptop",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/2/7/a42636f1-e98f-49a8-ac27-11490ce4ceb3.png",
      "nama": "Perawatan\nTubuh",
    },
  ];
  List<Map<String, dynamic>> lmenu2 = [
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/8/1/971aeca9-f3cc-4e15-a6b9-eb7667e08dd3.png",
      "nama": "Promo\nHari ini",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/8/8/ef55450a-0003-4d4e-b621-5cb0b650a772.png",
      "nama": "Live\nShopping",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/6/6/6078a763-4b0f-4bed-b9cd-d3a282cc7699.png",
      "nama": "Tokopedia\nSeru",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2022/5/10/761d6a73-1069-457f-a130-68a0d56d9620.png",
      "nama": "Promo di\nSurabaya",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/4/19/86e060e5-b9d9-4878-86df-20fba2db1542.png",
      "nama": "Bayar di\nTempat",
    },
    {
      "img":
          "https://images.tokopedia.net/img/cache/64-square/iEWsxH/2021/7/27/90224ebb-fd33-4bb9-be8c-8be9d8c10ba6.png",
      "nama": "Bangga\nLokal",
    },
  ];

  List<String> lbanner = [
    "https://images.tokopedia.net/img/cache/500/VxWOnu/2022/9/9/e8fa1324-d024-4ed3-aed0-b852851abaad.jpg",
    "https://images.tokopedia.net/img/cache/500/VxWOnu/2022/9/7/13a77c67-7c3a-489b-a4fa-f13a8e73aeea.jpg",
    "https://images.tokopedia.net/img/cache/500/VxWOnu/2022/9/9/3e5b8927-4f45-44dc-b1ba-f70118eff90e.jpg",
  ];

  @override
  void initState() {
    appBarScrollController.addListener(() {
      setState(() {
        scrollAppBarPosition = appBarScrollController.position.pixels;
      });
    });

    diskonScrollController.addListener(() {
      setState(() {
        scrollDiskonPosition = diskonScrollController.position.pixels;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // diskonOpacity = scrollDiskonPosition < Get.width * 0.40
    //     ? scrollDiskonPosition / (Get.width * 0.40)
    //     : 1;

    if (scrollDiskonPosition == 0) {
      diskonOpacity = 1;
    }

    if (scrollDiskonPosition > 0 && scrollDiskonPosition <= Get.width) {
      if (scrollDiskonPosition / Get.width * 3 > 1) {
        diskonOpacity = 0;
      } else {
        diskonOpacity = 1 - (scrollDiskonPosition / Get.width * 3);
      }
    }

    return Scaffold(
      backgroundColor: scrollAppBarPosition > 130 ? putih : hijau,
      appBar: appbar(),
      body: ListView(
        controller: appBarScrollController,
        children: [
          keanggotaan(),
          bgPutih(
            children: [
              menu1(),
              banner(),
              menu2(),
              diskon(size: MediaQuery.of(context).size),
              spesial()
            ],
          ),
        ],
      ),
      bottomNavigationBar: botomBar(),
    );
  }

  Column spesial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
          child: Text(
            'Spesial di Tokopedia hari ini',
            style: GoogleFonts.oxygen(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3 / 6,
                mainAxisExtent: 100),
            itemBuilder: (_, i) {
              return Container(
                decoration: BoxDecoration(
                  color: hijau,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      lSpesial[i],
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }

  Column diskon({Size? size}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Text(
            'Kejar Diskon Spesial',
            style: GoogleFonts.oxygen(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child: Text(
            'Kejar Diskon ',
            style: GoogleFonts.oxygen(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          height: 297,
          width: size!.width,
          color: biru,
          child: Stack(
            children: [
              Opacity(
                opacity: diskonOpacity,
                child: Image.network(
                  'https://images.tokopedia.net/img/cache/200/zssuBf/2022/9/9/2f1dad19-33e4-4ef8-ad10-af39be890d53.png',
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.fromLTRB(140, 15, 15, 15),
                controller: diskonScrollController,
                scrollDirection: Axis.horizontal,
                itemCount: 11,
                separatorBuilder: (_, i) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 140,
                    decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            color: hijau,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.tokopedia.net/img/cache/300-square/VqbcmM/2022/5/2/22f91f59-d744-4322-a879-c47da2b3e51b.jpg.webp?ect=4g'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          width: double.infinity,
                          height: 20,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.centerRight,
                              image: NetworkImage(
                                  'https://images.tokopedia.net/img/bPMdTC/2022/9/9/6fa51517-8313-44bf-befb-cb55d85d0c2c.png'),
                            ),
                          ),
                          child: Text(
                            'Kejar Diskon Spesial',
                            style: GoogleFonts.oxygen(
                              fontWeight: FontWeight.w600,
                              color: putih,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 2,
                            bottom: 5,
                          ),
                          child: Text(
                            "Rp. 52.000",
                            style: GoogleFonts.oxygen(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                              decoration: BoxDecoration(
                                color: merah.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                '55%',
                                style: GoogleFonts.oxygen(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: merah,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Rp. 75.000',
                              style: GoogleFonts.oxygen(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                                color: abu,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.network(
                              'https://images.tokopedia.net/img/official_store/badge_os.png',
                              height: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Kota Surabaya',
                              style: GoogleFonts.oxygen(
                                fontSize: 12,
                                color: abu,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: LinearProgressIndicator(
                            color: merah,
                            backgroundColor: abu.withOpacity(0.3),
                            value: 0.85,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Segera Habis",
                            style: GoogleFonts.oxygen(
                              fontSize: 12,
                              color: merah,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  BottomNavigationBar botomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: abu,
      unselectedItemColor: abu,
      selectedLabelStyle: GoogleFonts.oxygen(fontSize: 12),
      unselectedLabelStyle: GoogleFonts.oxygen(fontSize: 12),
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Image.asset(
            'assets/1_tok.png',
          ),
        ),
        BottomNavigationBarItem(
          label: "Feed",
          icon: Image.asset(
            'assets/2_tok.png',
          ),
        ),
        BottomNavigationBarItem(
          label: "Official Store",
          icon: Image.asset(
            'assets/3_tok.png',
          ),
        ),
        BottomNavigationBarItem(
          label: "Wishlist",
          icon: Image.asset(
            'assets/4_tok.png',
          ),
        ),
        BottomNavigationBarItem(
          label: "Transaksi",
          icon: Image.asset(
            'assets/5_tok.png',
          ),
        ),
      ],
    );
  }

  Widget menu1() {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return Column(
            children: [
              Image.network(
                lmenu[i]["img"],
                height: 33,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                lmenu[i]["nama"],
                style: GoogleFonts.oxygen(fontSize: 12),
                textAlign: TextAlign.center,
              )
            ],
          );
        },
        separatorBuilder: (_, i) {
          return const SizedBox(
            height: 8,
            width: 25,
          );
        },
        itemCount: lmenu.length,
      ),
    );
  }

  Widget menu2() {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return Column(
            children: [
              Image.network(
                lmenu2[i]["img"],
                height: 33,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                lmenu2[i]["nama"],
                style: GoogleFonts.oxygen(fontSize: 12),
                textAlign: TextAlign.center,
              )
            ],
          );
        },
        separatorBuilder: (_, i) {
          return const SizedBox(
            height: 8,
            width: 25,
          );
        },
        itemCount: lmenu2.length,
      ),
    );
  }

  Widget banner() {
    return Container(
      height: Get.width / 3.2,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return Container(
            width: Get.width - 30,
            decoration: BoxDecoration(
              color: biru,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(lbanner[i]),
              ),
            ),
          );
        },
        separatorBuilder: (_, i) {
          return const SizedBox(
            height: 8,
            width: 25,
          );
        },
        itemCount: lbanner.length,
      ),
    );
  }

  Container bgPutih({required List<Widget> children}) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: hitam.withOpacity(0.3),
            blurRadius: 16,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Container keanggotaan() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: putih,
                size: 15,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                'Dikirim ke Kantor ',
                style: GoogleFonts.oxygen(
                  color: putih,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: putih,
                size: 15,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: putih,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: hitam.withOpacity(0.3),
                  blurRadius: 16,
                  offset: const Offset(0, 0),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://images.tokopedia.net/img/walletapp/v1/pemuda-logo-short.png',
                            width: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'GoPay',
                            style: GoogleFonts.oxygen(
                              color: abu,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Rp 186.000',
                        style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '0 Coins',
                        style: GoogleFonts.oxygen(
                          color: abu,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://ecs7.tokopedia.net/img/blog/promo/2022/07/rewards_silver_filled%402x.png',
                            width: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Rewards',
                            style: GoogleFonts.oxygen(
                              color: abu,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Silver',
                        style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '20 Kupon Baru',
                        style: GoogleFonts.oxygen(
                          color: abu,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://images.tokopedia.net/img/cache/80/yidsPU/2022/8/3/9b38e4c3-cefd-45e3-8f2a-44a6cbd0b90d.png',
                            width: 16,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Langganan',
                            style: GoogleFonts.oxygen(
                              color: abu,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Plus',
                        style: GoogleFonts.oxygen(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Kamu terpilih!',
                        style: GoogleFonts.oxygen(
                          color: hijau,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      elevation: scrollAppBarPosition > 30 ? 1 : 0,
      backgroundColor: scrollAppBarPosition > 30 ? putih : hijau,
      title: SizedBox(
        height: 42,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Cari di Tokopedia',
            hintStyle: GoogleFonts.oxygen(),
            contentPadding: const EdgeInsets.only(top: 15),
            filled: true,
            fillColor: scrollAppBarPosition > 30 ? abu.withOpacity(0.2) : putih,
            prefixIcon: const Icon(
              CupertinoIcons.search,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        Icon(
          Icons.mail_outline_rounded,
          color: scrollAppBarPosition > 30 ? hitam : putih,
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.notifications_none_rounded,
          color: scrollAppBarPosition > 30 ? hitam : putih,
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: scrollAppBarPosition > 30 ? hitam : putih,
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.menu_rounded,
          color: scrollAppBarPosition > 30 ? hitam : putih,
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
