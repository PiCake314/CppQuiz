import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/theme_map.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    const List<Map<String, List<String>>> questions = [
      {
        "q1.png": [
          "1rfgwrfgrr2fg32",
          "2fgrfr2",
          "rfg2rf",
          "4fr2fr"
        ]
      }
    ];

    int question_index = 0;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("BG.png"),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 700,
                child: Image.asset(questions[question_index].keys.first),
              ),
            ),
          ),

          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // HighlightView(
              //    questions[question_index].keys.first,
              //   language: "cpp",
              //   theme: themeMap["a11y-dark"]!,
              //   textStyle:  const TextStyle(
              //     color: Colors.white,
              //     fontSize: 30,
              //   ),
              // ),

              const SizedBox(
                height: 200,
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Builder(
                  builder: (BuildContext context) {
                    List<String> answers = questions[question_index].values.first;
                    List<Widget> buttons = [];
                    for (int i = 0; i < answers.length; i++) {
                      buttons.add(
                        SizedBox(
                          width: 500,
                          child: ElevatedButton(
                            child: Text(answers[i]),
              
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white54),
                              foregroundColor: MaterialStateProperty.all(
                                Colors.black,
                              ),
                              textStyle: MaterialStateProperty.all(
                                const TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 20,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      );
              
                      buttons.add(
                        const SizedBox(
                          height: 20,
                        ),
                      );
                    }
                    return Column(
                      children: buttons,
                    );
                  },
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
