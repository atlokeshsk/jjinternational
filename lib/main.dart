import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jjinternational/app.dart';
import 'package:jjinternational/firebase_options.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
