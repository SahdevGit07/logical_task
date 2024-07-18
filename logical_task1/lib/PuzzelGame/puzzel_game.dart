import 'dart:math';

import 'package:flutter/material.dart';

class PuzzleGame extends StatefulWidget {
  const PuzzleGame({super.key});

  @override
  State<PuzzleGame> createState() => _PuzzleGameState();
}

class _PuzzleGameState extends State<PuzzleGame> {
  @override
  void initState() {
    generate(1, 8, 8);
    super.initState();
  }

  List number = [];
  void generate(int min, int max, int count) {
    List data = [];

    Random obj = Random();
    while (data.length < count) {
      int randomNumber = min + obj.nextInt(max - min + 1);
      if (!data.contains(randomNumber)) {
        data.add(randomNumber);
      }
    }
    data.add(0);

    number = data;
    print(data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    number[8] = number[8] == 0 ? "" : number[8];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("P U Z Z E L G A M E",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        child: GridView(
            children: [
              CommonContainer(
                text: number[0].toString(),
                onTap: () {
                  setState(() {
                    if (number[1] == "") {
                      number[1] = number[0];
                      number[0] = "";
                    } else if (number[3] == "") {
                      number[3] = number[0];
                      number[0] = "";
                    }
                  });
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[1].toString(),
                onTap: () {
                  setState(() {
                    if (number[0] == "") {
                      number[0] = number[1];
                      number[1] = "";
                    } else if (number[2] == "") {
                      number[2] = number[1];
                      number[1] = "";
                    } else if (number[4] == "") {
                      number[4] = number[1];
                      number[1] = "";
                    }
                  });
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[2].toString(),
                onTap: () {
                  setState(() {
                    if (number[1] == "") {
                      number[1] = number[2];
                      number[2] = "";
                    } else if (number[5] == "") {
                      number[5] = number[2];
                      number[2] = "";
                    }
                  });
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[3].toString(),
                onTap: () {
                  setState(() {
                    if (number[0] == "") {
                      number[0] = number[3];
                      number[3] = "";
                    } else if (number[4] == "") {
                      number[4] = number[3];
                      number[3] = "";
                    } else if (number[6] == "") {
                      number[6] = number[3];
                      number[3] = "";
                    }
                  });
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[4].toString(),
                onTap: () {
                  setState(() {});
                  if (number[1] == "") {
                    number[1] = number[4];
                    number[4] = "";
                  } else if (number[3] == "") {
                    number[3] = number[4];
                    number[4] = "";
                  } else if (number[5] == "") {
                    number[5] = number[4];
                    number[4] = "";
                  } else if (number[7] == "") {
                    number[7] = number[4];
                    number[4] = "";
                  }
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[5].toString(),
                onTap: () {
                  setState(() {});
                  if (number[2] == "") {
                    number[2] = number[5];
                    number[5] = "";
                  } else if (number[4] == "") {
                    number[4] = number[5];
                    number[5] = "";
                  } else if (number[8] == "") {
                    number[8] = number[5];
                    number[5] = "";
                  }
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[6].toString(),
                onTap: () {
                  setState(() {});
                  if (number[3] == "") {
                    number[3] = number[6];
                    number[6] = "";
                  } else if (number[7] == "") {
                    number[7] = number[6];
                    number[6] = "";
                  }
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[7].toString(),
                onTap: () {
                  setState(() {
                    if (number[4] == "") {
                      number[4] = number[7];
                      number[7] = "";
                    } else if (number[6] == "") {
                      number[6] = number[7];
                      number[7] = "";
                    } else if (number[8] == "") {
                      number[8] = number[7];
                      number[7] = "";
                    }
                  });
                  Congratulation();
                },
              ),
              CommonContainer(
                text: number[8].toString(),
                onTap: () {
                  setState(() {});
                  if (number[5] == "") {
                    number[5] = number[8];
                    number[8] = "";
                  } else if (number[7] == "") {
                    number[7] = number[8];
                    number[8] = "";
                  }
                  Congratulation();
                },
              ),
            ],
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              generate(1, 8, 8);
            });
          },
          label: Text("Refresh"),
          icon: Icon(Icons.refresh)),
    );
  }

  void Congratulation() {
    if (number[0] == 1 &&
        number[1] == 2 &&
        number[2] == 3 &&
        number[3] == 4 &&
        number[4] == 5 &&
        number[5] == 6 &&
        number[6] == 7 &&
        number[7] == 8 &&
        number[8] == "") {
      number[8] = 9;
      var snackbar = SnackBar(
        content: Text("Your Game Is Complete"),
        duration: Duration(seconds: 30),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}

CommonContainer({required String text, required void Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.deepPurple),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    ),
  );
}
