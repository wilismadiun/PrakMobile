import 'dart:ffi';

import 'package:get/get.dart';
import 'package:uas_prakhp/app/data/models/hospital_model.dart';
import 'package:uas_prakhp/app/data/models/provinsi_model.dart';
import 'package:uas_prakhp/app/data/providers/hospital_provider.dart';

class HospitalController extends GetxController {
  List<String> daftarprov = [
    "Aceh",
    "Jawa Timur",
  ];

  List<int> indexprovinsi = [];

  Future<List<Hospital>?> gethospital() async {
    HospitalProvider datahospital = HospitalProvider();

    var hasil = await datahospital.getHospital();

    return hasil;
  }
}
