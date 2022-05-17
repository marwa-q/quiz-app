import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q14 extends StatefulWidget {
  const Q14({ Key? key }) : super(key: key);

  @override
  State<Q14> createState() => _Q14State();
}

class _Q14State extends State<Q14> {
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
        appBar: Functions.myAppBar(context, 'السؤال الرابع عشر') ,
        body: Functions.question(
          context,
          '/Q15',
          'ما هي أكبر دولة في العالم؟',
          'روسيا',
          'الهند',
          'الصين',
          'روسيا'
          )
      ,),
    );
  }
}