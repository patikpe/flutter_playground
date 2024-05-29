import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_playground/app/app.dart';
import 'package:flutter_playground/app/app_logger.dart';
import 'package:flutter_playground/app/app_observer.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  AppLogger.instance;
  Bloc.observer = AppObserver();
  runApp(const MyApp());
}
