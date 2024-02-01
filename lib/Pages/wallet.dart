import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        title: Text('MyWallet',
            style: GoogleFonts.montserrat(
              fontSize: 19.6,
              fontWeight: FontWeight.w900,
            )),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.yellow[300],
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: const Column(
            children: [
              Icon(Icons.account_balance_wallet_rounded),
              Text('£234.4'),
            ],
          ),
        ),
      )),
    );
  }
}
