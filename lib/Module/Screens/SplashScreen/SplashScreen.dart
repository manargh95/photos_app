import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photos_app/Module/Screens/AlbumsScreen/AlbumScreen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => AlbumScreen());
    });
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
        "assets/images/splash.png",fit: BoxFit.fill,height: double.infinity,
      ),
          Positioned.fill(
            child: Center(child: Text("Pixl",style: TextStyle(color: Colors.grey,fontSize: 50),)),
            top: 60,
          ),
         
        ],
      ),
    );
  }
}
