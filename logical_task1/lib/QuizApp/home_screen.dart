import 'package:flutter/material.dart';
import 'package:logical_task1/QuizApp/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade900,
        child: SafeArea(
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/images/quizLogo.png"),
                width: 300,
                height: 300,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  "Learn Flutter The Fun Away..",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ));
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("Start Quiz"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
