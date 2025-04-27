import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setUpLocateService() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
