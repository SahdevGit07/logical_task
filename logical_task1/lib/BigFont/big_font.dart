import 'package:flutter/material.dart';

class BigFont extends StatefulWidget {
  const BigFont({super.key});

  @override
  State<BigFont> createState() => _BigFontState();
}

class _BigFontState extends State<BigFont> {
  double fontSize = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap To Big Font"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: CircleAvatar(
              radius: 150,
              backgroundColor: Colors.amber,
              child: Text("Sahdev Shisha",style: TextStyle(fontSize: fontSize),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: TextButton.styleFrom(
    backgroundColor: Colors.amber,
    ),
                onPressed: () {
                  setState(() {
                    if(fontSize <40)
                      {
                        fontSize++;
                      }
                  });
                },
                child: Text("Big"),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  setState(() {
                    if(fontSize>25)
                      {
                        fontSize--;
                      }
                  });
                },
                child: Text("Small"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
