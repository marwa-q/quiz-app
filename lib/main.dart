import 'package:flutter/material.dart';
import 'package:quiz_app1/Result.dart';
import 'MyHomePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Q1.dart';
import 'Q2.dart';
import 'Q20.dart';
import 'Q3.dart';
import 'Q4.dart';
import 'Q5.dart';
import 'Q6.dart';
import 'Q7.dart';
import 'Q8.dart';
import 'Q9.dart';
import 'Q10.dart';
import 'Q11.dart';
import 'Q12.dart';
import 'Q13.dart';
import 'Q14.dart';
import 'Q15.dart';
import 'Q16.dart';
import 'Q17.dart';
import 'Q18.dart';
import 'Q19.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'), 
      ],
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyHomePage(),
        '/Q1': (context) => const Q1() ,
        '/Q2': (context) => const Q2() ,
        '/Q3': (context) => const Q3() ,
        '/Q4': (context) => const Q4() ,
        '/Q5': (context) => const Q5() ,
        '/Q6': (context) => const Q6() ,
        '/Q7': (context) => const Q7() ,
        '/Q8': (context) => const Q8() ,
        '/Q9': (context) => const Q9() ,
        '/Q10': (context) => const Q10() ,
        '/Q11': (context) => const Q11() ,
        '/Q12': (context) => const Q12() ,
        '/Q13': (context) => const Q13() ,
        '/Q14': (context) => const Q14() ,
        '/Q15': (context) => const Q15() ,
        '/Q16': (context) => const Q16() ,
        '/Q17': (context) => const Q17() ,
        '/Q18': (context) => const Q18() ,
        '/Q19': (context) => const Q19() ,
        '/Q20': (context) => const Q20() ,
        '/Result': (context) => const Result() ,


      },
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(69, 87, 173, 1),
          fontFamily: 'Tajawal',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: 20,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold),
              headline6: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.normal)
                  )),
    );
  }
}
