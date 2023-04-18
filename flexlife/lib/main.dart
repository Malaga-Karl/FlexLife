import 'package:flexlife/screens/home.dart';
import 'package:flexlife/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Color(0xFF75A450),
          onPrimary: Colors.white,
          primaryContainer: Color(0xFFF0FFDD),
          onPrimaryContainer: Color(0xff345D00),
          secondary: Color(0xff67715B),
          onSecondary: Colors.white,
          secondaryContainer: Color(0xffE4F8D0),
          onSecondaryContainer: Color(0xff232B19),
          outline: Color(0xff797E74),
          background: Color(0xffFBFFF7),
          onBackground: Color(0xff1D201B),
          surface: Color(0xffFDFFFB),
          onSurface: Color(0xff1D201B),
          surfaceVariant: Color(0xffE4ECE0),
          onSurfaceVariant: Color(0xff494F45),
          inverseSurface: Color(0xff31352F),
          onInverseSurface: Color(0xffF2F7EF),
          inversePrimary: Color(0xffCDFFBC),
          shadow: Color(0xffCDFFBC),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: Color(0xFFCEF3B6),
          onPrimary: Color(0xff354F15),
          primaryContainer: Color(0xff619637),
          onPrimaryContainer: Color(0xffEAFFDD),
          secondary: Color(0xffCCDCC2),
          onSecondary: Color(0xff35412D),
          secondaryContainer: Color(0xff4D5844),
          onSecondaryContainer: Color(0xffE8F8DE),
          outline: Color(0xff93998F),
          background: Color(0xff151812),
          onBackground: Color(0x0ffE4E9E0),
          surface: Color(0xff151812),
          onSurface: Color(0xffE2E9E0),
          surfaceVariant: Color(0xff494F45),
          onSurfaceVariant: Color(0xffC9D0C4),
          inverseSurface: Color(0xffE3E9E0),
          onInverseSurface: Color(0xff31352F),
          inversePrimary: Color(0xff66A450),
          shadow: Color(0xff000000),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}
