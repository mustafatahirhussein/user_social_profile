// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:user_social_profile/user_social_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Package Test"),
          centerTitle: true,
        ),
        body: const Center(
          child: UserSocialProfile(
            fullName: "Mustafa Tahir",
            icons: [
              SocialIcon(
                name: Platform.behance,
                link: "https://github.com/mustafatahirhussein",
                iconSize: 50,
              ),
              SocialIcon(
                name: Platform.medium,
                link: "https://github.com/mustafatahirhussein",
                iconSize: 50,
              ),
            ],
            email: "abc@gmail.com",
            phone: "+921234567890",
          ),
        ),
      ),
    );
  }
}