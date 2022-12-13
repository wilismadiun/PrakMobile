import 'package:flutter/material.dart';
import 'package:uas/app/data/member.dart';
import 'package:uas/screens/dashboardScreen.dart';
import 'package:uas/app/routes/app_pages.dart';
import 'package:get/get.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isHidden = true;

  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white24,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/green-virus.png',
                  height: 150,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Mukta',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hi there! Nice to see you again.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Username'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: password,
                obscureText: isHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Password'),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      setState(
                        () {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // color: Colors.blue,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  final indexdata = login();
                  // print(indexdata);
                  if (indexdata == -2) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                              "Username dan Password yg Anda masukkan salah"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Exit"))
                          ],
                        );
                      },
                    );
                  } else {
                    // print(indexdata);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(indexdata),
                      ),
                    );
                    print("Hello Nilai index data adalah $indexdata");
                  }
                  // print("username dan password yg Anda masukkan salah");
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  login() {
    int? index;
    for (var i = 0; i < data.length; i++) {
      if (username.text == data[i].username &&
          password.text == data[i].password) {
        index = i;
        break;
      } else {
        index = -2;
      }
    }
    return index;
  }
}
