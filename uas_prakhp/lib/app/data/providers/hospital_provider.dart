import 'dart:convert';

import 'package:get/get.dart';

import '../models/hospital_model.dart';

class HospitalProvider extends GetConnect {
  Future<List<Hospital>?> getHospital() async {
    final response =
        await get('https://dekontaminasi.com/api/id/covid19/hospitals');

    List listhospital = json.decode(response.body);
    return Hospital.fromListjson(listhospital);
  }
}
