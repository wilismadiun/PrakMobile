import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';
import 'package:uas_prakhp/app/modules/home/views/detail_view.dart';
import 'package:uas_prakhp/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int indexkey;

    return Scaffold(
        appBar: AppBar(
          title: Text('DATABASE COVID 19'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.Hospital);
                },
                icon: Icon(Icons.local_hospital))
          ],
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
