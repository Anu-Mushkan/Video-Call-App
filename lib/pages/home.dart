import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:videocall/pages/joincode.dart';
import 'package:videocall/pages/newcall.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Call"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height: 80,),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 40, 0, 0),
          child: ElevatedButton.icon(onPressed: (){
            Get.to(NewCall());
            }, 
          icon: Icon(Icons.add), 
          label: Text("New Call"),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(350, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),
          ),
        ),
        Divider(thickness: 1, height: 40, indent: 40, endIndent: 20,), 
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
          child: OutlinedButton.icon(
            onPressed: (){
              Get.to(JoinCode());
            }, 
            icon: Icon(Icons.margin), 
            label: Text("Join with code"),
            style: OutlinedButton.styleFrom(
              fixedSize: Size(350, 30),
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
            ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.network("https://cdn-icons-png.flaticon.com/512/3845/3845808.png"),
        ),
      ]),
    );
  }
}