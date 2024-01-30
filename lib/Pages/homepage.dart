// ignore_for_file: sized_box_for_whitespace

import 'package:bentlly/Designs/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bently',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image.png'),
        ),
        actions: [
          IconButton.filled(
            style: iconButton1,
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.blueGrey,

            //   hoverColor: Colors.blueGrey,
          ),
        ],
        elevation: 0.0,
        //     backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        height: 300,
        color: Colors.red,
        child: PageView.builder(
            itemCount: 7,
            itemBuilder: (context, position) {
              return _widget(position);
            }),
      ),
    );
  }

  Widget _widget(int index) {
    return Stack(children: [
      Container(
        height: 210,

        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/food.jpg')),
          borderRadius: BorderRadius.circular(40),
          // color: index.isEven ? Colors.blueGrey : Colors.green[200]
        ),
        // child: const Column(children: []),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: const EdgeInsets.only(right: 40, left: 40, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white
              // child: const Column(children: []),
              ),
        ),
      ),
    ]);
  }
}
