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
        body:  Center(
          child: UserSocialProfile(
            fullName: "Mustafa Tahir",
            picture: 'https://avatars.githubusercontent.com/u/60258980?s=400&u=49d305bd19e5cf0eaf101986bfa075c3a7a3931c&v=4',
            icons: [
              icon(Platform.medium),
              icon(Platform.github),
              icon(Platform.youtube),
              icon(Platform.linkedin),
              icon(Platform.behance),
              icon(Platform.stack),
              icon(Platform.meta),
              icon(Platform.twitter),
              icon(Platform.instagram),
            ],
            email: "abc@gmail.com",
            phone: "+921234567890",
          ),
        ),
      ),
    );
  }

  SocialIcon icon(String param) => SocialIcon(
    name: param,
    link: "https://github.com/mustafatahirhussein",
    iconSize: 45,
  );
}