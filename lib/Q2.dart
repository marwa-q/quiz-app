import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q2 extends StatefulWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثاني') ,
        body: Functions.question(
          context,
          '/Q3',
          'ماذا تعني كلمة قاموس لغويا؟',
          'الكتاب الكبير',
          'البحر الواسع',
          'الفهرس',
          'البحر الواسع'
          )
      ,),
    );
  }
}