import 'package:dalal_full/core/routes/app_routing.dart';

void customNavigate({required String path}) {
  goRouter.push(path);
}

void customNavigateReplace({required String path}) {
  goRouter.pushReplacement(path);
}
