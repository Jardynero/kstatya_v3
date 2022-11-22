import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  final String iconPath;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconPath);
  }
}
