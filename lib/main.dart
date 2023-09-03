import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photos_app/Module/Screens/SplashScreen/SplashScreen.dart';
import 'App/binding/binding.dart';
import 'Config/themes/AppColor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appColor(),
      home:  SplashScreen(),
      initialBinding: Binding(),

    );
  }
}
