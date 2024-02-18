import 'package:cylinder_kini/core/di/service_locator.dart';
import 'package:cylinder_kini/firebase_options.dart';
import 'package:cylinder_kini/cylinder_kini.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await _initial();
  runApp(const CylinderKini());
}

Future<void> _initial() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.setUp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
