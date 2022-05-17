import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q1 extends StatefulWidget {
  const Q1({Key? key}) : super(key: key);

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        appBar: Functions.myAppBar(context, 'السؤال الأول') ,
        body: Functions.question(
          context,
          '/Q2' ,
          'ما هي أكبر قارة على الكوكب؟',
          'أفريقيا',
          'آسيا',
          'امريكا',
          'آسيا'
          )
      ,),
    );
  }
}
