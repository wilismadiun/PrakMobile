import 'package:get/get.dart';
import 'package:uas_prakhp/app/data/models/hospital_model.dart';

import 'package:uas_prakhp/app/modules/home/bindings/home_binding.dart';
import 'package:uas_prakhp/app/modules/home/views/home_view.dart';
import 'package:uas_prakhp/app/modules/hospital/bindings/hospital_binding.dart';
import 'package:uas_prakhp/app/modules/hospital/controllers/hospital_controller.dart';
import 'package:uas_prakhp/app/modules/hospital/views/hospital_view.dart';
import 'package:uas_prakhp/app/modules/login/bindings/login_binding.dart';
import 'package:uas_prakhp/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOSPITAL,
      page: () => HospitalView(),
      binding: HospitalBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    )
  ];
}
