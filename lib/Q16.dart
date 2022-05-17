import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q16 extends StatefulWidget {
  const Q16({ Key? key }) : super(key: key);

  @override
  State<Q16> createState() => _Q16State();
}

class _Q16State extends State<Q16> {
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
        appBar: Functions.myAppBar(context, 'السؤال السادس عشر') ,
        body: Functions.question(
          context,
          '/Q17',
          'ما الدولة العربية التي يمر بها خط الاستواء؟',
          'السودان',
          'الصومال',
          'مصر',
          'الصومال'
          )
      ,),
    );
  }
}