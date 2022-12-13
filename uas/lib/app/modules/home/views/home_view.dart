import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';
import 'package:uas/app/modules/home/views/detail_view.dart';
import 'package:uas/app/routes/app_pages.dart';
import 'package:uas/screens/dashboardScreen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int indexkey;

    return Scaffold(
        appBar: AppBar(
          title: Text('PERSEBARAN KASUS COVID-19'),
          backgroundColor: Colors.green,
          centerTitle: true,

          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Get.toNamed(Routes.Hospital);
          //       },
          //       icon: Icon(Icons.local_hospital))
          // ],
        ),
        body: FutureBuilder(
          future: controller.getprovinsi(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            if (snapshot.data == null)
              return Center(child: Text("TIDAK ADA DATA."));
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapshot.data?[index].key}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          indexkey = index;
                          return DetailView(indexkey);
                        },
                      ),
                    );
                  },
                );
              },
            );
          },
        ));
  }
}
