import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<dynamic>users=[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
      title:const Text("Api call"),
      ),
      body:ListView.builder(
        itemCount:users.length,
        itemBuilder: (contect,index){
          final user=users[index];
          final email=user['email'];
      return ListTile(
        title: Text(email),
      );
      }),
      floatingActionButton:FloatingActionButton(onPressed: fetchApi) ,

    );
  }
  // get request
  void fetchApi() async{
    final url='https://randomuser.me/api/?results=5';
    final uri=Uri.parse(url); 
     final responce=await http.get(uri);
     final body=responce.body;
     final json=jsonDecode(body);
     setState(() {
       users=json['results'];
     });
   print('fetchuser');
  }
  //post
  postData() async{
   var responce=await http.post(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),body:{
   "id":1.toString(),
   "name":"vishal",
   "email":"vishal889676@gmail.com",
   });
   print(responce);
  }
}