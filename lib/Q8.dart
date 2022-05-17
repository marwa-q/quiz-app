import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q8 extends StatefulWidget {
  const Q8({ Key? key }) : super(key: key);

  @override
  State<Q8> createState() => _Q8State();
}

class _Q8State extends State<Q8> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثامن') ,
        body: Functions.question(
          context,
          '/Q9',
          'في أي عام فرض الصيام؟',
          'العام الثاني للهجرة',
          'العام الثالث للهجرة',
          'العام الرابع للهجرة',
          'العام الثاني للهجرة'
          )
      ,),
    );
  }
}