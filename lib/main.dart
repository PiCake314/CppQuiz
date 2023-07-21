import 'dart:ui';

import 'package:cpp_quiz/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "C++ Quiz!",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const String paragraph =
        "With every new version, C++ becomes more and more complex. The features that are added to the language are not always intuitive, and sometimes it becomes hard to keep track of what does what and why something happens. Let's test your knowledge of C++!";

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("BG.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "C++ is hard..!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: SizedBox(
                  width: 500,
                  child: Text(
                    paragraph,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
      
              ElevatedButton(
                child: const Text("Begin!"),
      
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white54),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 30,
                      // fontFamily: "Roboto",
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
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const Quiz(),
      
                      transitionDuration: const Duration(milliseconds: 250),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
      
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
