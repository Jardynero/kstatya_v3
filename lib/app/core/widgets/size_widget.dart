import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    super.key,
    this.height,
    this.width,
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
