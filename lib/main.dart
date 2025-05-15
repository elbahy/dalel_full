import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:dalal_full/core/routes/app_routing.dart';
import 'package:dalal_full/core/services/locate_service.dart';
import 'package:dalal_full/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpLocateService();
  getIt<CacheHelper>().init();
  runApp(const DalelFull());
}

class DalelFull extends StatelessWidget {
  const DalelFull({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
