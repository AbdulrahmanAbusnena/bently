import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter User Name',
                      prefixIcon: const Icon(Icons.person)),
                  enableSuggestions: true,
                  maxLines: 1,
                  obscureText: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  enableSuggestions: true,
                  maxLines: 1,
                  obscureText: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Password',
                  ),
                  enableSuggestions: false,
                  obscureText: true,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ));
  }
}
