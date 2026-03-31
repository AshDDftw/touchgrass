import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touchgrass/shared/widgets/bottom_nav.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      
    
      debugShowCheckedModeBanner: false,
      title: "Achievements",
      theme: ThemeData.light(),
      home: const BottomNav(),

    );
  }
}