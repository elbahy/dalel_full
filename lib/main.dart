import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:dalal_full/core/routes/app_routing.dart';
import 'package:dalal_full/core/services/locate_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DalelFull());
  WidgetsFlutterBinding.ensureInitialized();
  setUpLocateService();
  getIt<CacheHelper>().init();
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
