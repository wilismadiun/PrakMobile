import 'dart:async';

import 'package:get/get.dart';
import 'package:uas/app/modules/home/views/home_view.dart';
import 'package:uas/main.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:uas/app/routes/app_pages.dart';
import 'package:uas/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Covidly.',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                  ),
                  speed: Duration(milliseconds: 200),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Dapatkan Informasi COVID-19 Disini!',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '@Covidly Team',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Scaffold(
//       body: Container(
//         color: primaryColor,
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             AnimatedTextKit(
//               animatedTexts: [
//                 TyperAnimatedText(
//                   'eskade.',
//                   textStyle: TextStyle(
//                     fontFamily: 'Mukta',
//                     fontWeight: FontWeight.bold,
//                     fontSize: 32,
//                     color: Colors.white,
//                   ),
//                   speed: Duration(milliseconds: 270),
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   'catat keuanganmu,',
//                   style: TextStyle(
//                     fontFamily: 'Mukta',
//                     fontSize: 14,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   'bangun masa depanmu bersamaku.',
//                   style: TextStyle(
//                     fontFamily: 'Mukta',
//                     fontSize: 14,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 30),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
