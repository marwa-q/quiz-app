import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q5 extends StatefulWidget {
  const Q5({ Key? key }) : super(key: key);

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
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
        appBar: Functions.myAppBar(context, 'السؤال الخامس') ,
        body: Functions.question(
          context,
          '/Q6',
          'ما مقياس سرعة السفن؟',
          'كيلومتر لكل ثانية',
          'الياردة',
          'العقدة',
          'العقدة'
          )
      ,),
    );
  }
}