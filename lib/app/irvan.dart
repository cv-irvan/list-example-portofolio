import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IrvanCoId extends StatefulWidget {
  const IrvanCoId({Key? key}) : super(key: key);

  @override
  State<IrvanCoId> createState() => _IrvanCoIdState();
}

class _IrvanCoIdState extends State<IrvanCoId> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            color: isDark ? const Color(0xff1b1e23) : const Color(0xffffffff),
            duration: const Duration(milliseconds: 600),
            width: Get.width,
            height: Get.height,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Responsive(
                  desktop: Text(
                    'irvan.co.id',
                    style: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SimpleSignature',
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff1b1e23),
                    ),
                  ),
                  tablet: Text(
                    'irvan.co.id',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SimpleSignature',
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff1b1e23),
                    ),
                  ),
                  mobile: Text(
                    'irvan.co.id',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SimpleSignature',
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff1b1e23),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Cooperate :',
                  style: GoogleFonts.dmSans(
                    color: isDark
                        ? const Color(0xffffffff)
                        : const Color(0xff1b1e23),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'WhatsApp',
                      onPressed: () {
                        launchUrl(
                          Uri.parse('https://wa.me/6285156890199'),
                        );
                      },
                      icon: Icon(
                        MdiIcons.whatsapp,
                        color: isDark
                            ? const Color(0xffffffff)
                            : const Color(0xff1b1e23),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      tooltip: 'LinkedIn',
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              'https://www.linkedin.com/in/irvan-373004154/'),
                        );
                      },
                      icon: Icon(
                        MdiIcons.linkedin,
                        color: isDark
                            ? const Color(0xffffffff)
                            : const Color(0xff1b1e23),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                      tooltip: 'Send Mail',
                      onPressed: () {
                        launchUrl(
                          Uri.parse('mailto:id.co.irvan@gmail.com'),
                        );
                      },
                      icon: Icon(
                        MdiIcons.email,
                        color: isDark
                            ? const Color(0xffffffff)
                            : const Color(0xff1b1e23),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
              icon: Icon(
                isDark ? MdiIcons.weatherPartlyCloudy : MdiIcons.weatherNight,
                color:
                    isDark ? const Color(0xffffffff) : const Color(0xff1b1e23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Responsive extends StatefulWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
// If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return widget.desktop!;
    }
// If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && widget.tablet != null) {
      return widget.tablet!;
    }
// Or less then that we called it mobile
    else {
      return widget.mobile!;
    }
  }
}
