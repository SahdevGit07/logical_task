import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String calculator = "";

  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1,
        title: const Text("Radio Button"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  controller: controller1,
                  decoration: InputDecoration(
                    labelText: "First Value",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  controller: controller2,
                  decoration: InputDecoration(
                    labelText: "Second Value",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Sum",
                    groupValue: calculator,
                    onChanged: (value) {
                      setState(() {
                        calculator = value!;
                      });
                    },
                  ),
                  const Text(
                    "Summation",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Sub",
                    groupValue: calculator,
                    onChanged: (value) {
                      setState(() {
                        calculator = value!;
                      });
                    },
                  ),
                  const Text(
                    "Subtraction",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Multi",
                    groupValue: calculator,
                    onChanged: (value) {
                      setState(() {
                        calculator = value!;
                      });
                    },
                  ),
                  const Text(
                    "Multiplication",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Div",
                    groupValue: calculator,
                    onChanged: (value) {
                      setState(() {
                        calculator = value!;
                      });
                    },
                  ),
                  const Text(
                    "Division",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int store = 0;
                    int value1 = int.parse(controller1.text.toString()).toInt();

                    int value2 = int.parse(controller2.text.toString()).toInt();
                    switch (calculator) {
                      case "Sum":
                        store = value1 + value2;
                        print(store);

                      case "Sub":
                        store = value1 - value2;
                        print(store);
                      case "Multi":
                        store = value1 * value2;
                        print(store);
                      case "Div":
                        store = value1 ~/ value2;
                        print(store);


                    } total = store;
                  });
                },
                child:
                    Text("${total == 0 ? "Answer is 0" : "Yor answer is $total"}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
