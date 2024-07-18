import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        style:
                            IconButton.styleFrom(backgroundColor: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://images.slurrp.com/prodrich_article/b3whgpid7wj.webp?impolicy=slurrp-20210601&width=880&height=500"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Sei Ua Samun Phrai",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined,
                                color: Colors.blue),
                            Text("50min"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange),
                            Text("4.8"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.red,
                            ),
                            Text("325kcal"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15))),
                              child: Center(
                                  child: Text(
                                "\$12",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 55),
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 16,
                                      child: Text("1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17)),
                                    ),
                                    Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [Text("Ingrredienta")],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/noodles.png"),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              Text(
                                "Noddels",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://media.istockphoto.com/id/154969747/photo/shrimp.jpg?s=612x612&w=0&k=20&c=UwoFiPL4EmquiuVK43qko1jx00k6SNFOdQ7lBOkNUfc="),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                "Shrimp",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://images.eatsmarter.com/sites/default/files/styles/576x432/public/warenkunde-huehnerei-300x225.jpg"),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                "Egg",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Image(
                                  image: NetworkImage(
                                      "https://asian-veggies.com/cdn/shop/files/scallion_c1b4978d-8f15-41ba-94c6-fc52d7eb1426_1200x1200.png?v=1686707616"),
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Text(
                                "Scalioon",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Tell your restaurant's story in a few words, what makes your place special, and why people should choose your business. Include your Unique Selling Proposition, name, and location. Second paragraph: Talk about your food.",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber, foregroundColor: Colors.black),
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
      ),
    );
  }
}
