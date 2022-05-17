import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Q18 extends StatefulWidget {
  const Q18({ Key? key }) : super(key: key);

  @override
  State<Q18> createState() => _Q18State();
}

class _Q18State extends State<Q18> {
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
        appBar: Functions.myAppBar(context, 'السؤال الثامن عشر') ,
        body: Functions.question(
          context,
          '/Q19',
          'ما الحيوان الذي لا صوت له؟',
          'الزرافة',
          'الأرنب',
          'النملة',
          'الزرافة'
          )
      ,),
    );
  }
}