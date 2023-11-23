
import 'package:bake_n_cake/screens/my_app_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: const Color(0xFFB5DBCE),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 120,
                width: 500,
                color: const Color(0xFFE7D683),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text("Special Dream Cakes"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 250,
                    width: 180,
                    color: Colors.white,
                    child: SizedBox(
                      height: 50,
                      width: 180,
                      child: Image.asset(
                        "assets/cake1.jpg",
                        width: 180,
                        height: 50,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 250,
                  width: 180,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        
        ],
      ),
    );
  }
}