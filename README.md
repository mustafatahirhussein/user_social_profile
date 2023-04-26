# user_social_profile

This plugin is quite useful for showing a Developer's social media information,
particularly useful for <strong>ABOUT THE DEVELOPER</strong> section in majority of the apps.

<strong><p align="center" >------ Some useful insights ------</p></strong>
<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub](https://img.shields.io/pub/v/user_social_profile)](https://pub.dev/packages/user_social_profile)
[![Twitter](https://img.shields.io/twitter/follow/MustafaTahir567?style=social)](https://twitter.com/MustafaTahir567)

</div>

## Preview

![alt text](https://user-images.githubusercontent.com/60258980/233025802-2f1c98e3-c8c7-471f-b1e3-6180da63c90a.png)

## Installation & usage

Under the project's terminal, jot down the below command to install the suitable version, or install it manually.
```shell
flutter pub add user_social_profile

import 'package:user_social_profile/user_social_profile.dart';
```

### Code snippet

```shell
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
        SocialIcon(
        name: Platform.behance,
        link: "your_behance_url",
        iconSize: 50,
      ),
    ],
    email: "dummyemail@gmail.com",
 ),
```

## Optional parameters

* picture
* email
* phone

```shell
# Here is the updated snippet view

              UserSocialProfile(
                fullName: "Mustafa Tahir",
                picture: "your_image_url",
                phone: "+921234567899",
                icons: [
                  SocialIcon(
                    name: Platform.stack,
                    link: "your_stackoverflow_url",
                    iconSize: 50,
                  ),
                ],
                email: "dummyemail@gmail.com",
              ),
```

#### Additionally, custom styles can also be applied

* phoneStyle
* emailStyle

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

* Submit an issue describing the bug or feature request.
* Fork the repository and make changes in a new branch.
* Submit a pull request with your changes.

## Buy me a coffee
<a href="https://www.buymeacoffee.com/mustafatahir44" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>