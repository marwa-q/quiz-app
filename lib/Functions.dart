import 'package:flutter/material.dart';

class Functions {
  static int score = 0;

  static selectScreen(BuildContext ctx, screen) {
    Navigator.of(ctx).pushReplacementNamed(screen, arguments: score);
  }

  static incrementer() {
    score++;
  }

  static answer(ctx, text, route, correctAnswer) {
    if (correctAnswer == text) {
      return answerButton(ctx, text, route, true);
    } else {
      return answerButton(ctx, text, route, false);
    }
  }

  static question(ctx, route, question, a, b, c, correctAnswer) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text(
                question,
                textAlign: TextAlign.center,
                style: Theme.of(ctx).textTheme.headline5,
                maxLines: 2,
              )),
          answer(ctx, a, route, correctAnswer),
          answer(ctx, b, route, correctAnswer),
          answer(ctx, c, route, correctAnswer),
        ],
      ),
    );
  }

  static answerButton(ctx, text, route, isCorrect) {
    return SizedBox(
      width: 270,
      height: 90,
      child: Container(
          margin: const EdgeInsets.all(15.0),
          child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0)),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(69, 87, 173, 1)),
              ),
              onPressed: () {
                if (isCorrect == true) {
                  incrementer();
                }
                selectScreen(ctx, route);
              },
              child: Text(
                text,
                style: Theme.of(ctx).textTheme.headline6,
                ),
                )),
    );
  }

  static myAppBar(ctx, title) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(69, 87, 173, 1),
      title: Text(title, style: Theme.of(ctx).textTheme.headline6),
      leading: const Icon(Icons.ac_unit),
    );
  }

  static myButton({required ctx, required label, route}) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0)),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(69, 87, 173, 1)),
            ),
            onPressed:(){
              selectScreen(ctx, route);
              score = 0;
            },
            child: Text(label, style: Theme.of(ctx).textTheme.headline6)));
  }
}
