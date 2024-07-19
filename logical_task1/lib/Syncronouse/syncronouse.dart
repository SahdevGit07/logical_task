import 'package:flutter/material.dart';

class SyncronuousePractise extends StatefulWidget {
  const SyncronuousePractise({super.key});

  @override
  State<SyncronuousePractise> createState() => _SyncronuousePractiseState();
}

class _SyncronuousePractiseState extends State<SyncronuousePractise> {
  Future<String> SyncronouseFunction() async {
    String file = await Future.delayed(Duration(seconds: 7), () {
      return "Data SuccessFull";
    });
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "Syncronouse Widget",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
      ),
      body: FutureBuilder(
        future: SyncronouseFunction(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.deepPurple,
              ),
            );
          } else if (snapshot.hasData) {
            return Center(child: Text(snapshot.data!));
          } else if (snapshot.hasError) {
            return Center(child: Text("Something Went to Wrong"));
          } else {
            return Center(child: Text("Hello World"));
          }
        },
      ),
    );
  }
}
