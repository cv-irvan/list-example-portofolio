import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Gojek extends StatefulWidget {
  const Gojek({Key? key}) : super(key: key);

  @override
  State<Gojek> createState() => _GojekState();
}

class _GojekState extends State<Gojek> {
  Color hijau = const Color(0xff00880C);
  Color hitam = const Color(0xff1C1E1D);
  Color semihitam = const Color(0xff494B4A);
  Color putih = const Color(0xffFFFFFF);
  Color semiputih = const Color(0xffFAFAFA);
  Color merah = const Color(0xffE9001E);
  Color biru = const Color(0xff0081A0);
  Color abu = const Color(0xffBBBBBB);
  Color semiabu = const Color(0xffE8E8E8);

  int botomBar = 0;

  List<Map<String, dynamic>> lmenu = [
    {
      "ic": "assets/ic_indoride.png",
      "nama": "GoRide",
    },
    {
      "ic": "assets/ic_indocar.png",
      "nama": "GoCar",
    },
    {
      "ic": "assets/ic_indofood.png",
      "nama": "GoFood",
    },
    {
      "ic": "assets/ic_indosend.png",
      "nama": "GoSend",
    },
    {
      "ic": "assets/ic_indomart.png",
      "nama": "GoMart",
    },
    {
      "ic": "assets/ic_indobox.png",
      "nama": "GoBox",
    },
    {
      "ic": "assets/ic_indoclub.png",
      "nama": "GoClub",
    },
    {
      "ic": "assets/ic_eksplor.png",
      "nama": "Lainnya",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      appBar: appBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          goPay(),
          menu(),
          clubXp(),
          listVocher(),
          topBanner(),
        ],
      ),
      bottomNavigationBar: botomNavigation(),
    );
  }

  Container topBanner() => Container(
        height: MediaQuery.of(context).size.width / 2.4,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://lelogama.go-jek.com/post_featured_image/top-banner-ID.jpg'),
          ),
        ),
      );

  Widget listVocher() => SizedBox(
        height: 57,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) {
            return itemVocher();
          },
          separatorBuilder: (_, i) {
            return const SizedBox(
              width: 15,
            );
          },
          itemCount: 3,
        ),
      );

  Container itemVocher() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.7,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: hitam.withOpacity(0.2),
            blurRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '6 Vouchers akan hangus',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Pakai sebelum 11 Sep 2022',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: hijau,
            minRadius: 13,
            child: Icon(
              FontAwesomeIcons.percent,
              color: putih,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget clubXp() {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: hitam.withOpacity(0.2),
            blurRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: putih,
          gradient: LinearGradient(
            colors: [
              hijau.withOpacity(0.1),
              Colors.transparent,
              Colors.transparent,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/ic_indoclub.png',
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '30 XP lagi ada Harta Karun',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: LinearProgressIndicator(
                    color: hijau,
                    backgroundColor: abu,
                    value: 0.7,
                    minHeight: 3,
                  ),
                ),
              ],
            ),
            const Icon(
              FontAwesomeIcons.chevronRight,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  GridView menu() {
    return GridView.builder(
      itemCount: lmenu.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.bottomSheet(
              isDismissible: true,
              isScrollControlled: true,
              DraggableScrollableSheet(
                initialChildSize: 0.93,
                maxChildSize: 0.93,
                builder: (context, controller) {
                  return detailMenu(controller);
                },
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                lmenu[index]["ic"],
                width: 35,
                color: index == 7 ? hijau : null,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(lmenu[index]["nama"]),
            ],
          ),
        );
      },
    );
  }

  Container detailMenu(ScrollController controller) {
    return Container(
      decoration: BoxDecoration(
        color: putih,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.remove_rounded,
            color: Colors.grey[600],
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            controller: controller,
            children: [
              const Text(
                'Layanan Teratas',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              menu(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Layanan Lainnya',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Loyalitas',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              gridDetailMenu(
                children: [
                  itemDetailMenu(ic: 'assets/ic_indoclub.png', nama: 'GoClub')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Apa aja tentang COVID-19',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              gridDetailMenu(
                children: [
                  itemDetailMenu(ic: 'assets/ic_indomed.png', nama: 'GoMed')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Pesan makanan dan belanja',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              gridDetailMenu(
                children: [
                  itemDetailMenu(ic: 'assets/ic_indofood.png', nama: 'GoFood'),
                  itemDetailMenu(ic: 'assets/ic_indomart.png', nama: 'GoMart'),
                  itemDetailMenu(ic: 'assets/ic_indoshop.png', nama: 'GoShop'),
                  itemDetailMenu(ic: 'assets/ic_indomall.png', nama: 'GoMall'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Bepergian dan pengiriman',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              gridDetailMenu(
                children: [
                  itemDetailMenu(ic: 'assets/ic_indoride.png', nama: 'GoRide'),
                  itemDetailMenu(ic: 'assets/ic_indocar.png', nama: 'GoCar'),
                  itemDetailMenu(ic: 'assets/ic_indosend.png', nama: 'GoSend'),
                  itemDetailMenu(
                      ic: 'assets/ic_indobluebird.png', nama: 'GoBluebird'),
                  itemDetailMenu(ic: 'assets/ic_indobox.png', nama: 'GoBox'),
                  itemDetailMenu(
                      ic: 'assets/ic_indotransit.png', nama: 'GoTransit'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget itemDetailMenu({required String ic, required String nama}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          ic,
          width: 35,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(nama),
      ],
    );
  }

  gridDetailMenu({List<Widget>? children}) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      children: children ?? [],
    );
  }

  BottomNavigationBar botomNavigation() {
    return BottomNavigationBar(
      fixedColor: hitam,
      unselectedItemColor: semihitam,
      currentIndex: botomBar,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => setState(() {
        botomBar = value;
      }),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.house),
          label: 'Beranda',
          activeIcon: Icon(
            FontAwesomeIcons.house,
            color: hijau,
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.percent),
          label: 'Promo',
          activeIcon: Icon(
            FontAwesomeIcons.percent,
            color: hijau,
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.receipt),
          label: 'Pesanan',
          activeIcon: Icon(
            FontAwesomeIcons.receipt,
            color: hijau,
          ),
        ),
        BottomNavigationBarItem(
          icon: const Icon(FontAwesomeIcons.solidComment),
          label: 'Chat',
          activeIcon: Icon(
            FontAwesomeIcons.solidComment,
            color: hijau,
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: hijau,
      centerTitle: false,
      title: SizedBox(
        height: 42,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Sat set sat set pake GoRide',
            contentPadding: const EdgeInsets.only(top: 15),
            filled: true,
            fillColor: putih,
            prefixIcon: const Icon(
              CupertinoIcons.search,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: putih,
          maxRadius: 20,
          child: Icon(
            Icons.person,
            color: hijau,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget goPay() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 110,
      decoration: BoxDecoration(
        color: biru,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: putih,
                minRadius: 3,
              ),
              const SizedBox(
                height: 5,
              ),
              CircleAvatar(
                backgroundColor: putih.withOpacity(0.5),
                minRadius: 3,
              ),
            ],
          ),
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.coins,
                          color: biru,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'gopay',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          ' coins',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '2.741',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'klik buat detail',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, color: hijau),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: putih,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: biru,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'gopay',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Rp. 120.000',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'klik & cek riwayat',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, color: hijau),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_topup.png',
                width: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Isi Saldo',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: putih,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_bayar.png',
                width: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Bayar',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: putih,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_eksplor.png',
                width: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Eksplor',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: putih,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
