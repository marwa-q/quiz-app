import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q15 extends StatefulWidget {
  const Q15({ Key? key }) : super(key: key);

  @override
  State<Q15> createState() => _Q15State();
}

class _Q15State extends State<Q15> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localizations Sample App',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      home: Scaffold(
        appBar: Functions.myAppBar(context, 'السؤال الخامس عشر') ,
        body: Functions.question(
          context,
          '/Q16',
          'ما هي آخر سورة نزلت في مكة؟',
          'سورة العنكبوت',
          'سورة الروم',
          'سورة الذاريات',
          'سورة الروم'
          )
      ,),
    );
  }
}