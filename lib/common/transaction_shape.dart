import 'package:flutter/widgets.dart';

class TransactionShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.15, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
