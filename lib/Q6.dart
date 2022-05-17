import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q6 extends StatefulWidget {
  const Q6({ Key? key }) : super(key: key);

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
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
        appBar: Functions.myAppBar(context, 'السؤال السادس') ,
        body: Functions.question(
          context,
          '/Q7',
          'ما هي أكبر دولة عربية مساحة؟',
          'مصر',
          'السودان',
          'الجزائر',
          'السودان'
          )
      ,),
    );
  }
}