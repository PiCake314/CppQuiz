import 'package:cpp_quiz/questions.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({
    super.key,
    required this.score,
    required this.total,
    required this.answers,
  });

  final int score;
  final int total;
  final List<int> answers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("BG.png"),
            fit: BoxFit.cover,
          )),
          child: ListView(
            children: [
              const SizedBox(height: 100),
              Text(
                'Your Score: $score/$total',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              for (int i = 0; i < questions.length; i++)
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 100,
                      width: 600,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "${i + 1}. ${questions[i].text}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                      
                          Positioned(
                            top: 50,
                            left: 100,
                            child: Text(
                              "Correct Answer: ${questions[i].answers[questions[i].correct_answer]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                                    
                          Positioned(
                            top: 70,
                            left: 100,
                            child: Text(
                              "Your Answer: ${questions[i].answers[answers[i]]}",
                              style: TextStyle(
                                color: questions[i].answers[answers[i]] == questions[i].answers[questions[i].correct_answer] ? Colors.green : Colors.red,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    const SizedBox(height: 50),
                    Image.asset(
                      questions[i].file_name,
                      width: questions[i].width,
                    ),
                    const SizedBox(height: 50),
                    const Text("Explanation:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      questions[i].explanation,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 100,
                      endIndent: 100,
                    ),
                  ],
                ),
            ],
          )),
    );
  }
}
