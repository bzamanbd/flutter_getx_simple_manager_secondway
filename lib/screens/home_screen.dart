import 'package:flutter/material.dart';
import '../getx_controllers/number_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({Key? key, required this.title}) : super(key: key);

  NumberController numberController = Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<NumberController>(
              init: numberController,
              builder: (controller)=>Text(
              'The Number is : ${controller.count}',
              textScaleFactor: 1.3,
            ),
            ),
            const SizedBox(height: 26),
            ElevatedButton(
                onPressed: ()=> numberController.increment(),
                child: const Text(
                  'Next',
                  textScaleFactor: 1.4,
                ))
          ],
        ),
      ),
    );
  }
}
