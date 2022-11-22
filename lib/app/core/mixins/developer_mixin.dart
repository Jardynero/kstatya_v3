import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

mixin DeveloperMixin {
  PixelPerfect testInterface({
    required Widget child,
    required String asset,
  }) {
    return PixelPerfect.extended(
      initBottom: 0,
      image: Image.asset(asset, fit: BoxFit.cover),
      child: child,
    );
  }
}
