import 'package:get/get.dart';
import 'package:gpmbs/app/app_routes.dart';
import 'package:gpmbs/app/views/dashboard_view.dart';
import 'package:gpmbs/app/views/login_view.dart';

class AppPages {
  static const INITIAL = AppRoutes.login;

  static final routes = [
    GetPage(name: AppRoutes.login, page: () => LoginView()),
    GetPage(name: AppRoutes.dashboard, page: () => DashboardView()),
  ];
}
