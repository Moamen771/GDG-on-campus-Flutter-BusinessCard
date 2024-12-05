import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 62, 80, 1),
      appBar: AppBar(
        title: const Text("Business Card"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 125,
              backgroundColor: Colors.blueGrey.shade200,
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Moamen.jpg"),
                radius: 120,
              ),
            ),
            const Text(
              "Moamen Yasser",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.normal,
                  fontSize: 40,
                  color: Colors.white),
            ),
            Text(
              "Flutter Core Team",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                  color: Colors.blueGrey.shade300),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width * .70,
                color: Colors.blueGrey.shade300,
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.call,
                      size: 35,
                    ),
                  ),
                  Text(
                    "(+20) 1158142190",
                    style: TextStyle(fontSize: 26),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.mail,
                      size: 35,
                    ),
                  ),
                  Text(
                    "memoaser86@gmail.com",
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
