import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MYDrawer extends StatelessWidget {
  const MYDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow[300],
      child: ListView(children: [
        DrawerHeader(
          child: Image.asset('assets/food-icon.png'),
        ),
        ListTile(
            title: Text(
              'Home Page',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white54,
              ),
            ),
            leading: const Icon(Icons.home_rounded),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {}),
        ListTile(
            title: Text(
              'Cart Page',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white54,
              ),
            ),
            leading: const Icon(Icons.home_rounded),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {}),
        ListTile(
            title: Text(
              'Wallet',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white54,
              ),
            ),
            leading: const Icon(Icons.home_rounded),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {}),
        ListTile(
            title: Text(
              'About',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white54,
              ),
            ),
            leading: const Icon(Icons.home_rounded),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {}),
      ]),
    );
  }
}
