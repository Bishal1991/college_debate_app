import 'dart:ui';

import 'package:untitled/profile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"),),
        body: Container(
          width: 200,
          height: 90,
          alignment: Alignment.center,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: TextStyle(
                fontSize: 20,
              ),
              elevation: 10,

              foregroundColor: Colors.white70,
              backgroundColor: Colors.black,
            ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Profile())
                );
              },
              child: Text("Go to Profile")
          ),
        ),
    );
  }
}