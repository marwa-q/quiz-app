import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q3 extends StatefulWidget {
  const Q3({Key? key}) : super(key: key);

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثالث') ,
        body: Functions.question(
          context,
          '/Q4',
          'ما عدد كواكب المجموعة الشمسية؟',
          '10 كواكب',
          '9 كواكب',
          '8 كواكب',
          '10 كواكب'
          )
      ,),
    );
  }
}
