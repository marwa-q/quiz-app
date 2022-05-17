import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Functions.dart';

class Q10 extends StatefulWidget {
  const Q10({ Key? key }) : super(key: key);

  @override
  State<Q10> createState() => _Q10State();
}

class _Q10State extends State<Q10> {
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
        appBar: Functions.myAppBar(context, 'السؤال العاشر') ,
        body: Functions.question(
          context,
          '/Q11',
          'من العالم الذي اكتشف الدورة الدموية؟',
          'ابن سينا',
          'وليام هارفي',
          'ابن النفيس',
          'وليام هارفي'
          )
      ,),
    );
  }
}