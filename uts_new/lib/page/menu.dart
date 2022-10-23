import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uts_new/data/member.dart';
import 'package:uts_new/page/profile.dart';

class menu extends StatelessWidget {
  final int indexdata;
  const menu(this.indexdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              // alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              color: Colors.lightGreen[400],
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(123, 1, 50, 100),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/${data[indexdata].profile}"),
                            fit: BoxFit.cover),
                      ),
                      height: 125,
                      width: 125,
                      margin: EdgeInsets.only(top: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${data[indexdata].name}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mukta',
                        fontSize: 20,
                      ),
                    ),
                    Text("${data[indexdata].email}"),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => menu(indexdata),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.equalizer),
              title: Text("Members"),
              trailing: Icon(Icons.chevron_left),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return profilemember();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Selamat Datang!',
              style: TextStyle(
                fontFamily: 'Mukta',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data[indexdata].name} @${data[indexdata].username}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/${data[indexdata].profile}",
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
