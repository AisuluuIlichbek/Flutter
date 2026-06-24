import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tapshyrma_1/setState_lesson/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int san = 0;
  int number = 0;
  @override
  Widget build(BuildContext context) {
    number++;
    log('number build ---> $number');
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Тапшырма 1')),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            child: Center(
              child: Text(
                'Сан: $san',
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            width: 350,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                setState(() {
                  san = san + 1;
                });
              },
              child: const Icon(Icons.add, color: Colors.white),
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                setState(() {
                  san = san - 1;
                });
              },
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage(data: san.toString())));
          },
          child: const Icon(
            Icons.navigate_next,
            color: Colors.blue,
            size: 50,
          ),
        ),
      ]),
    );
  }
}
