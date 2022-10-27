import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/pages/myhomepages.dart';
import 'package:untitled6/pages/mypagess.dart';
import 'package:untitled6/pekomont/poke_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PekoApp.getPekomot();
    return ScreenUtilInit(
      designSize: const Size (412, 720),
      builder: (context, child) =>MaterialApp(
   debugShowCheckedModeBanner: false,
        title: 'Future Demo',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        home: const MyHomePages(),
      ),
    );
  }
}
