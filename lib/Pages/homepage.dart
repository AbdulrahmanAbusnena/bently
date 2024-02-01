// ignore_for_file: sized_box_for_whitespace

import 'package:bentlly/Designs/theme.dart';
import 'package:bentlly/Materials/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MYDrawer(),
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
            controller: pageController,
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
              fit: BoxFit.cover, image: AssetImage('assets/foody.jpg')),
          borderRadius: BorderRadius.circular(40),
          // color: index.isEven ? Colors.blueGrey : Colors.green[200]
        ),
        // child: const Column(children: []),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 135,
          margin: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white
              // child: const Column(children: []),
              ),
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Pizza Margreata',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                //   textAlign: TextAlign.center,
                //   maxLines: 1,
              ),
              Row(
                children: [
                  Wrap(
                    children: [
                      ListView(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 50.0,
                          );
                        }),
                      ),
                    ],
                  ),
                  Text('4.5',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.grey[300],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('5,800 comments',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                      )),
                  Text('Top',
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: Colors.grey[300])),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.circle,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text('Normal'),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.location_on, color: Colors.green[300]),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text('1.2km'),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.timer, color: Colors.red[200]),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('32 mins'),
                ],
              ),
            ]),
          ),
        ),
      ),
    ]);
  }
}
