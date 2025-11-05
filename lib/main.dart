import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Hello, World!'),
              Text("C'est l'Atelier 02"),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 5)),
                ),
                child: Text(
                  'Boite stylisée avec Container',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 116, 180, 220),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  'Boite stylisée avec Container',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(width: 200, height: 200, color: Colors.blueGrey),
                  Icon(Icons.star, size: 100, color: Colors.amberAccent),
                  Text(
                    "Superposé !",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
