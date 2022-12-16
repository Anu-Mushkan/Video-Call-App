import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../call.dart';

class JoinCode extends StatelessWidget {
   TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: Icon(Icons.arrow_back_ios_new_sharp, size: 20),
                onTap: (Get.back),
              ),
            ),
            SizedBox(height: 50),
            
            SizedBox(height: 50),
            Text(
              "Enter the code below",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "abc-efg-dhi"),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(Call(channelName: _controller.text.trim()));
              },
              child: Text("Join"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(50, 30),
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}