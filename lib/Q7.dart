import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q7 extends StatefulWidget {
  const Q7({ Key? key }) : super(key: key);

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
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
        appBar: Functions.myAppBar(context, 'السؤال السابع') ,
        body: Functions.question(
          context,
          '/Q8',
          'متى أرسلت امريكا رحلتها الأولى إلى لفضاء؟',
          '1960',
          '1962',
          '1963',
          '1962'
          )
      ,),
    );
  }
}