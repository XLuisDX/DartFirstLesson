import 'package:cafe_card/coffee_pref.dart';
import 'package:cafe_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Coffee App",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.brown[600],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[200],
            child: const StyledBodyText("How I like my coffee"),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[100],
            child: const CoffeePref(),
          ),
          Expanded(child: Image.asset("assets/img/coffee_bg.jpg",
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
          ))
        ],
      ),
    );
  }
}