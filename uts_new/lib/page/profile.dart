import 'package:flutter/material.dart';
import 'package:uts_new/data/member.dart';
import 'package:uts_new/page/descripsi.dart';

class profilemember extends StatefulWidget {
  @override
  State<profilemember> createState() => _profilememberState();
}
// final int? indexku;

class _profilememberState extends State<profilemember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Manage Members"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/images/${data[index].profile}"),
            ),
            title: Text(data[index].name),
            onTap: () {
              final int urutan = index;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return biodata(urutan);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
