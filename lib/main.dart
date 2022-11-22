import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kstatya/app/core/bindings/application_bindings.dart';
import 'package:kstatya/app/core/theme/light_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    DevicePreview(
      //TODO: remove in production mode
      enabled: !kReleaseMode,
      builder: (context) {
        return const RootWidget();
      },
    ),
  );
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Кстатия!',
      builder: DevicePreview.appBuilder, //TODO: remove in production mode
      useInheritedMediaQuery: true,
      initialBinding: ApplicationBindings(),
      initialRoute: AppPages.INITIAL,
      theme: lightTheme,
      locale: DevicePreview.locale(context),
      themeMode: ThemeMode.light,
      getPages: AppPages.routes,
    );
  }
}
