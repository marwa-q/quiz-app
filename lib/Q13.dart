import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q13 extends StatefulWidget {
  const Q13({ Key? key }) : super(key: key);

  @override
  State<Q13> createState() => _Q13State();
}

class _Q13State extends State<Q13> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثالث عشر') ,
        body: Functions.question(
          context,
          '/Q14',
          'كم عاما استمر حكم الدولة العثمانية؟',
          '300 عام',
          '400 عام',
          '500 عام',
          '400 عام'
          )
      ,),
    );
  }
}