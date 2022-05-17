import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q20 extends StatefulWidget {
  const Q20({ Key? key }) : super(key: key);

  @override
  State<Q20> createState() => _Q20State();
}

class _Q20State extends State<Q20> {
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
        appBar: Functions.myAppBar(context, 'السؤال العشرون') ,
        body: Functions.question(
          context,
          '/Result',
          'أي غاز موجود في جسم الإنسان؟',
          'النيتروجين',
          'الأكسجين',
          'ثاني اكسيد الكربون',
          'الأكسجين'
          )
      ,),
    );
  }
}