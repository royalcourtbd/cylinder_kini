import 'package:cylinder_kini/presenter/home/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CylinderKini extends StatelessWidget {
  const CylinderKini({super.key});

  static final GlobalKey _globalKey = GlobalKey();
  static BuildContext get globalContext => _globalKey.currentContext!;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: _globalKey,
      title: 'Cylinder Kini',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
