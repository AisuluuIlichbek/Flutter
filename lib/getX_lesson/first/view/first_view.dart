import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:tapshyrma_1/getX_lesson/first/controller/first_controller.dart';
import 'package:tapshyrma_1/setState_lesson/second_page.dart';

class FirstView extends StatelessWidget {
  FirstView({super.key});
  int number = 0;
  FirstViewController firstViewController = Get.put(FirstViewController());
  @override
  Widget build(BuildContext context) {
    firstViewController.number++;
    log('number build ---> ${firstViewController.number}');
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Тапшырма 1')),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            child: Center(
              child: Obx(
                () => Text(
                  'Сан: ${firstViewController.san}',
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
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
              onPressed: firstViewController.koshuu,
              child: const Icon(Icons.add, color: Colors.white),
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: firstViewController.kemitu,
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
                    builder: (context) =>
                        SecondPage(data: firstViewController.san.toString())));
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
