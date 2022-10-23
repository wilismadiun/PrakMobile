import 'package:flutter/material.dart';
import 'package:uts_new/data/member.dart';

class biodata extends StatelessWidget {
  final int index;

  const biodata(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightGreen[100],
          child: ListView(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/${data[index].profile}"),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "${data[index].name}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "${data[index].desc}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
