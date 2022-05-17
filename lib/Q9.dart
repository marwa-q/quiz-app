import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q9 extends StatefulWidget {
  const Q9({ Key? key }) : super(key: key);

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
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
        appBar: Functions.myAppBar(context, 'السؤال التاسع') ,
        body: Functions.question(
          context,
          '/Q10',
          'كم عدد لترات دم الإنسان؟',
          '4 لترات',
          '5 لترات',
          '6 لترات',
          '6 لترات'
          )
      ,),
    );
  }
}