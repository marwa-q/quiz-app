import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q12 extends StatefulWidget {
  const Q12({ Key? key }) : super(key: key);

  @override
  State<Q12> createState() => _Q12State();
}

class _Q12State extends State<Q12> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثاني عشر') ,
        body: Functions.question(
          context,
          '/Q13',
          'ما أقدم متحف في العالم؟',
          'متحف الإسكندرية',
          'متحف اللوفر',
          'المتحف الصيني',
          'متحف الإسكندرية'
          )
      ,),
    );
  }
}