import 'package:flutter/material.dart';
import 'package:flutter_task_business_card/screens/display_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DisplayCard(),
                ));
          },
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          color: Colors.amber,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: const Text(
            "Go To B.C",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
