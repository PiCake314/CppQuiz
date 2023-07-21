
class Question {
  const Question({
    required this.text,
    required this.file_name,
    required this.answers,
    required this.correct_answer,
    required this.width,
    required this.padding,
  });

  final String text;
  final String file_name;
  final List<String> answers;
  final int correct_answer;
  final double width;
  final double padding;
}


const List<Question> questions = [
  Question(
      text: "Does the following code compile?",
      file_name: "lambda.png",
      answers: [
        "Yes",
        "No",
        "wtf",
      ],
      correct_answer: 0,
      width: 350,
      padding: 100,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "boolinc.png",
      answers: [
        "0",
        "1",
        "2",
        "Syntax Error",
      ],
      correct_answer: 3,
      width: 500,
      padding: 100,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "chararr.png",
      answers: [
        "\"Pie\"",
        "Run Time Error",
        "Compile Time Error",
        "Syntax Error",
      ],
      correct_answer: 2,
      width: 500,
      padding: 100,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "3darr.png",
      answers: [
        "0",
        "1",
        "Compile Time Error",
        "Syntax Error",
      ],
      correct_answer: 2,
      width: 500,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "numindex.png",
      answers: [
        "3",
        "4",
        "Segmentaion Fault",
        "Syntax Error",
      ],
      correct_answer: 1,
      width: 500,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "overdose.png",
      answers: [
        "342",
        "222",
        "314",
        "334",
      ],
      correct_answer: 1,
      width: 500,
      padding: 90,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "folding.png",
      answers: [
        "-2",
        "-6",
        "-26",
        "6",
      ],
      correct_answer: 3,
      width: 500,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "bit.png",
      answers: [
        "-2",
        "-1",
        "-0",
        "Syntax Error",
      ],
      correct_answer: 0,
      width: 350,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "init.png",
      answers: [
        "3.14Meow",
        "30:3.414",
        "30.414:3",
        "Syntax Error",
      ],
      correct_answer: 0,
      width: 350,
      padding: 120,
    ),

  Question(
      text: "Does the following code compile?",
      file_name: "cap.png",
      answers: [
        "Yup",
        "Nope",
        "No idea",
      ],
      correct_answer: 1,
      width: 600,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "const.png",
      answers: [
        "31433",
        "3333",
        "14333",
        "Syntax Error",
      ],
      correct_answer: 2,
      width: 500,
      padding: 90,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "strcomp.png",
      answers: [
        "0",
        "1",
        "Syntax Error",
        "Compile Time Error",
      ],
      correct_answer: 2,
      width: 600,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "inherit.png",
      answers: [
        "AAA",
        "AAB",
        "ABB",
        "Compile Time Error",
      ],
      correct_answer: 2,
      width: 400,
      padding: 100,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "linh.png",
      answers: [
        ":3:3.14",
        ":3.14:3.14",
        "Syntax Error",
        "Compile Time Error",
      ],
      correct_answer: 0,
      width: 700,
      padding: 120,
    ),

  Question(
      text: "What is the output of following code?",
      file_name: "exclaim.png",
      answers: [
        "!??",
        "!?!",
        "?!?",
        "!!!",
      ],
      correct_answer: 0,
      width: 450,
      padding: 100,
    ),

];


