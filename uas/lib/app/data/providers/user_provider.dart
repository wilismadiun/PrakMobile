import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  Future<List<User>?> getUser() async {
    final response =
        await get('https://data.covid19.go.id/public/api/prov.json');
    List listuser = response.body["list_data"];
    return User.fromListjson(listuser);
  }
}
