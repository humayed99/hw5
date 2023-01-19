import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;
  var heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$count',
              style: const TextStyle(fontSize: 75, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text(
                'سبّح',
                style: TextStyle(fontSize: 85, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (heartColor == Colors.red) {
                      heartColor = Colors.black;
                    } else {
                      heartColor = Colors.red;
                    }
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 100,
                  color: heartColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
