import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q11 extends StatefulWidget {
  const Q11({ Key? key }) : super(key: key);

  @override
  State<Q11> createState() => _Q11State();
}

class _Q11State extends State<Q11> {
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
        appBar: Functions.myAppBar(context, 'السؤال الحادي عشر') ,
        body: Functions.question(
          context,
          '/Q12',
          'من آخر من توفى من العشرة المبشرين بالجنة؟',
          'عبد الرحمن بن عوف',
          'الزبير بن عوام',
          'سعد بن أبي وقاص',
          'سعد بن أبي وقاص'
          )
      ,),
    );
  }
}