import 'package:apiintegration_task/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(GetMaterialApp(home: Home(),));
}
class Home extends StatelessWidget {
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Data"),),
      body: ListView.builder(
        itemCount: userController.posts.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title:Text(userController.posts[index].name) ,
               subtitle:Wrap(
               direction: Axis.vertical,
                children: [
                  Text(userController.posts[index].address),
                  Text(userController.posts[index].age),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
