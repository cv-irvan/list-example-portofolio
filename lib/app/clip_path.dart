import 'package:flutter/material.dart';

class CliperPath extends StatefulWidget {
  const CliperPath({super.key});

  @override
  State<CliperPath> createState() => _CliperPathState();
}

class _CliperPathState extends State<CliperPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          height: 400,
          color: Colors.indigo,
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    final path = Path();

    //  path.lineTo(0, 0), // point 1 (pojok kiri atas)
    path.quadraticBezierTo(
      width * 0.5, //point 3 (tengah bawah)
      height - 100,
      0,
      height,
    ); // point 2 (pojok kiri bawah)
    path.quadraticBezierTo(
      width * 0.5, //point 3 (tengah bawah)
      height, //point 3 (tengah bawah)
      width, //point 4 (pojok kanan bawah)
      height - 100, //point 4 (pojok kanan bawah)
    );
    path.lineTo(width, 0); // point 5 (pojok kanan atas)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
