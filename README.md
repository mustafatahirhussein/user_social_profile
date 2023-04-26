# user_social_profile

user_social_profile plugin is quite useful for showing a Developer's social media information,
particularly useful for ABOUT THE DEVELOPER section in majority of the apps.

## Preview

![alt text](https://user-images.githubusercontent.com/60258980/233025802-2f1c98e3-c8c7-471f-b1e3-6180da63c90a.png)

## Installation & usage

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

### Additionally, custom styles can also be applied

* phoneStyle
* emailStyle

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

* Submit an issue describing the bug or feature request.
* Fork the repository and make changes in a new branch.
* Submit a pull request with your changes.