<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package is useful for displaying the User or a Developer's Social Media information.

## Features
This is a pure Dart Package

## How to install and use

First, import the package

```
import 'package:user_social_profile/user_social_profile.dart';
```


Code Snippet

```
UserSocialProfile(
    fullName: "Mustafa Tahir",
    icons: [
        SocialIcon(
        name: Platform.github,
        link: "your_github_url",
        iconSize: 50,
      ),
        SocialIcon(
        name: Platform.linkedin,
        link: "your_linkedin_url",
        iconSize: 50,
      ),
    ],
    email: "abc@gmail.com",
 ),
```

Optional Parameters

```
- Picture
- Email
- Phone#

/* You can make use of styling as well */
emailStyle & phoneStyle respectively
```

