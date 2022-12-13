import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:uas/app/routes/app_pages.dart';
import 'package:uas/app/data/member.dart';
import 'package:uas/screens/login.dart';

class DashboardScreen extends StatefulWidget {
  final int indexdata;

  const DashboardScreen(this.indexdata);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
      fontSize: 14,
      color: Color.fromRGBO(63, 63, 63, 1),
    );

    var indexdata;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/top-background.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                              'assets/profile/${data[widget.indexdata].profile}'),
                        ),
                        Column(
                          children: [
                            Text(
                              '${data[widget.indexdata].name}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              '@${data[widget.indexdata].username}',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GetMaterialApp(
                                    debugShowCheckedModeBanner: false,
                                    title: "Case",
                                    initialRoute: AppPages.INITIAL,
                                    getPages: AppPages.routes,
                                  ),
                                ),
                              );
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/location.png', height: 130),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Lokasi Kasus COVID-19'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GetMaterialApp(
                                    debugShowCheckedModeBanner: false,
                                    title: "Hospital",
                                    initialRoute: AppPages.Hospital,
                                    getPages: AppPages.routes,
                                  ),
                                ),
                              );
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/hospital.png', height: 130),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Rumah Sakit Rujukan'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // CovidChart(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
