import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Functions.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
        appBar: Functions.myAppBar(context, 'النتيجة'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom:20.0),
                child: Text(
                  'لقد حصلت على',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Text(
                '${Functions.score}/20',
                style: Theme.of(context).textTheme.headline5,
              ),
              Functions.myButton(
                  ctx: context, label: 'أعد أداء الاختبار', route: '/Q1'),
            ],
          ),
        ),
      ),
    );
  }
}
