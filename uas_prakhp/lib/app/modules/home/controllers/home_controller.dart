import 'package:get/get.dart';
import 'package:uas_prakhp/app/data/models/provinsi_model.dart';
import 'package:uas_prakhp/app/data/providers/provinsi_provider.dart';

class HomeController extends GetxController {
  Future<List<Provinsi>?> getprovinsi() async {
    ProvinsiProvider dataprovinsi = ProvinsiProvider();

    var hasil = await dataprovinsi.getProvinsi();

    return hasil;
  }
}
