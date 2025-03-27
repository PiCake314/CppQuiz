class Question {
  const Question({
    required this.text,
    required this.file_name,
    required this.answers,
    required this.correct_answer,
    required this.width,
    required this.padding,
    required this.explanation,
  });

  final String text;
  final String file_name;
  final List<String> answers;
  final int correct_answer;
  final double width;
  final double padding;
  final String explanation;
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
    explanation:
        "Scopes, lambdas, scopes inside lambdas, and lambdas inside scopes.",
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
    explanation: "Bool increments got deprecated in C++17.",
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
    explanation:
        "The string \"Pie\" has an implicit null character in the end of it, so it's 4 characters long, but the array is only 3 characters long.",
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
    explanation: "The correct type is unsigned char (*arr2)[5] = arr[2];"
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
    explanation: "The bracket operator translates to a simple pointer addition. Addition is commutative, so *(arr + 3) is the same as *(3 + arr).",
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
    explanation: "const cast causes an rvalue cast by default unless specified otherwise.",
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
    explanation: "The expression unfolds to -3 - (-14 - (-1 - (-5 - (-9))))",
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
    explanation: "b was alocated 2 bits only and was initialized to 0b01. Adding 1 to it causes it to overflow to 0b10, which is -2 in 2's complement.",
  ),
  Question(
    text: "What is the output of following code?",
    file_name: "init.png",
    answers: [
      "3.14Meow",
      "3:3.414",
      "3.414:3",
      "Syntax Error",
    ],
    correct_answer: 3,
    width: 350,
    padding: 120,
    explanation: "You MUST initialize the variables in the order they are declared in the struct.",
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
    explanation: "The '<int>' syntax is not allowed for calling lambdas.",
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
    explanation: "const/constexpr cause the compiler to evaluate the expression at compile time.",
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
    correct_answer: 3,
    width: 600,
    padding: 120,
    explanation: "There is not a function such as std::string::compare(std::string, std::string).",
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
    correct_answer: 1,
    width: 600,
    padding: 120,
    explanation: "a and a2 are of type A. a2 it of type B.",
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
    explanation: "Yes, you can indeed inherit from lambdas.",
  ),
  Question(
    text: "What is the output of following code?",
    file_name: "exclaim.png",
    answers: [
      "!??",
      "!!!",
      "?!?",
      "!!?",
    ],
    correct_answer: 3,
    width: 450,
    padding: 100,
    explanation: "z1 and z2 inherit from T1 because of the deduction guide. z3 inherits from itself which then initializes to t to Z which inherits from T2 by defualt.",
  ),
];
