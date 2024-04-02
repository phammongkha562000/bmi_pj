import 'package:bmi_pj/app.dart';
import 'package:bmi_pj/data/services/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureInjection();

  runApp(const ProviderScope(child: MyApp()));
  FlutterNativeSplash.remove();
}
