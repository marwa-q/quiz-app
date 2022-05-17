import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q17 extends StatefulWidget {
  const Q17({ Key? key }) : super(key: key);

  @override
  State<Q17> createState() => _Q17State();
}

class _Q17State extends State<Q17> {
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
        appBar: Functions.myAppBar(context, 'السؤال السابع عشر') ,
        body: Functions.question(
          context,
          '/Q18',
          'ما هو لون الرئة السليمة؟',
          'وردي',
          'أحمر',
          'أبيض',
          'وردي'
          )
      ,),
    );
  }
}