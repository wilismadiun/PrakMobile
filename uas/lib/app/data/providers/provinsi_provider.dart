import 'package:get/get.dart';

import '../models/provinsi_model.dart';

class ProvinsiProvider extends GetConnect {
  Future<List<Provinsi>?> getProvinsi() async {
    final response =
        await get('https://data.covid19.go.id/public/api/prov.json');
    List listprovinsi = response.body["list_data"];
    return Provinsi.fromListjson(listprovinsi);
  }
}
