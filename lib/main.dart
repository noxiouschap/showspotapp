import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_booking_app1/controllers/auth_controller.dart';
import 'package:movie_booking_app1/controllers/common_controllers.dart';
import 'package:movie_booking_app1/controllers/location_controller.dart';
import 'package:movie_booking_app1/firebase_options.dart';
import 'package:movie_booking_app1/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(AuthController());
  Get.put(LocationController());
  Get.put(CommonController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        iconTheme: const IconThemeData(color: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
