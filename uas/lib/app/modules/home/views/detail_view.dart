import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class DetailView extends GetView<HomeController> {
  final int indexkey;
  DetailView(this.indexkey);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getprovinsi(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        if (snapshot.data == null)
          return Center(child: Text("TIDAK ADA DATA."));

        return Scaffold(
          appBar: AppBar(
            title: Text('${snapshot.data?[indexkey].key}'),
            backgroundColor: Colors.green,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Nama Provinsi        : ${snapshot.data?[indexkey].key}",
                //   style: TextStyle(fontSize: 20),
                // ),
                SizedBox(height: 10),
                Text(
                  "Jumlah Kasus         : ${snapshot.data?[indexkey].jumlahKasus}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "Jumlah Sembuh     : ${snapshot.data?[indexkey].jumlahSembuh}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "Jumlah Meninggal : ${snapshot.data?[indexkey].jumlahMeninggal}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "Jumlah Dirawat      : ${snapshot.data?[indexkey].jumlahDirawat}",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
