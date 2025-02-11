import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/ContactUs.dart';
import 'package:garden_lovers_mobile_app/Privacy%20Page.dart';
import 'package:garden_lovers_mobile_app/Providers/Repeat%20Provider.dart';
import 'package:garden_lovers_mobile_app/Providers/User%20Login%20Provider.dart';
import 'package:garden_lovers_mobile_app/Screen/Contact%20Us.dart';
import 'package:garden_lovers_mobile_app/Screen/Security%20Screen.dart';
import 'package:garden_lovers_mobile_app/Screen/Services%20Screens/Order%20Success.dart';
import 'package:garden_lovers_mobile_app/Screen/Welcome%20pages/First%20Page.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Providers/UserProvider-SignUp.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider(),),
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => Repeat_Provider(),),
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SecurityScreen(),
        );
      },
    );
  }
}
