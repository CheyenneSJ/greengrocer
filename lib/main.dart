import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src.dart/pages/auth/controller/auth_controller.dart';

import 'package:greengrocer/src.dart/pages/base/splash/splash_screen.dart';
import 'package:greengrocer/src.dart/pages_routes/app_pages.dart';

void main() {
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Greengrocer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: PagesRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
