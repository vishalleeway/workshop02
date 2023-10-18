import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State {
//This key will be used to identify the state of the form.
  final _formKey = GlobalKey<FormState>();
 void validate(){
  if(_formKey.currentState!.validate()){
    //print('ohk');

  }else{
    //print('err');
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Center(child: Text("login form"))),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                   SizedBox(
                  height:16.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                    labelText:'Please Enter your Username',
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10.0),
                    )
                    ),
                    validator: (value) {
                      //var name=value;
                      if (value==Null||value!.length<3) {
                      return 'Please enter some text';
                      }
                   return null;
                     
                    },
                  ),
                  SizedBox(
                  height:16.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                       iconColor:Colors.red,
                    labelText:'Please Enter your password',
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10.0),
                    )
                    ),
                    validator: (value) {
                      print(value);
                      if (value==Null||value!.length<6) {
                      return 'Please enter password';
                      }
                     return null;
                     
                    },
                    
                  ),
                  SizedBox(
                  height:16.0,
                  ),
                  ElevatedButton(
                    onPressed: validate,
                    child: const Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
