import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget{
  const Signuppage({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}