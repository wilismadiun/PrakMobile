import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hospital_controller.dart';

class HospitalView extends GetView<HospitalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Rumah Sakit Rujukan'),
        centerTitle: true,
        leading: Center(),
      ),
      body: Center(
        child: FutureBuilder(
          future: controller.gethospital(),
          builder: (context, snapshot) {
            if (snapshot.data == null) return CircularProgressIndicator();
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();
            if (snapshot.data?.length == 0)
              return Center(child: Text("Data Kosong"));
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) => ListTile(
                onLongPress: () {
                  Get.defaultDialog(
                      backgroundColor: Colors.green,
                      title: "${snapshot.data?[index].address}",
                      middleText: "${snapshot.data?[index].phone}");
                },
                title: Text("${snapshot.data?[index].name}"),
                subtitle: Text("${snapshot.data?[index].province}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
