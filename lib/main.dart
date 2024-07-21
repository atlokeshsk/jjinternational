import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jjinternational/app.dart';
import 'package:jjinternational/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
