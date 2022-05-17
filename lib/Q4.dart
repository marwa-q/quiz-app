import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q4 extends StatefulWidget {
  const Q4({ Key? key }) : super(key: key);

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
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
        appBar: Functions.myAppBar(context, 'السؤال الرابع') ,
        body: Functions.question(
          context,
          '/Q5',
          'كم تبلغ سرعة الضوء؟',
          '300 ألف كم/ث',
          '400 ألف كم/ث',
          '500 ألف كم/ث',
          '300 ألف كم/ث'
          )
      ,),
    );
  }
}