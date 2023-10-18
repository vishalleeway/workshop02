import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title:const Text('home page from feature1')) ,
     body:SafeArea(
      child:Column(
     children: [
       ElevatedButton(
          onPressed: () => Navigator.pushNamed(context,'/api-call'),
          child: const Text('make-Api-call!'),
        ),
     ],
      ),
      ),

    );
  }
}