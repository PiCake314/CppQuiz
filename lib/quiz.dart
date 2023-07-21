import 'package:cpp_quiz/results.dart';
import 'package:flutter/material.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int question_index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("BG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  questions[question_index].text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 44,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: questions[question_index].padding),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: questions[question_index].width,
                  child: Image.asset(questions[question_index].file_name),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 2 - 250,
              child: Builder(
                builder: (BuildContext context) {
                  List<String> answers = questions[question_index].answers;
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
                          onPressed: () {
                            if (i == questions[question_index].correct_answer) {
                              score++;
                            }

                            setState(() {
                              if(question_index < questions.length - 1){
                                question_index++;
                              }
                              else{
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => Results(
                                      score: score,
                                      total: questions.length,
                                    ),

                                    transitionDuration:
                                        const Duration(milliseconds: 250),
                                    transitionsBuilder: (_, a, __, c) =>
                                        FadeTransition(opacity: a, child: c),
                                  ),
                                );
                              }
                            });
                          },
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
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${question_index + 1}/${questions.length}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
