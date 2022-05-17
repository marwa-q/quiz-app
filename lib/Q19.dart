import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q19 extends StatefulWidget {
  const Q19({ Key? key }) : super(key: key);

  @override
  State<Q19> createState() => _Q19State();
}

class _Q19State extends State<Q19> {
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
        appBar: Functions.myAppBar(context, 'السؤال التاسع عشر') ,
        body: Functions.question(
          context,
          '/Q20',
          'من هو مكتشف النظرية النسبية؟',
          'نيوتن',
          'توماس اديسون',
          'آينشتاين',
          'آينشتاين'
          )
      ,),
    );
  }
}