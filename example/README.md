This plugin is quite useful for showing a Developer's social media information, particularly useful for ABOUT THE DEVELOPER section in majority of the apps.

## Preview
![alt text](https://user-images.githubusercontent.com/60258980/233025802-2f1c98e3-c8c7-471f-b1e3-6180da63c90a.png)


## Installation & usage
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

### Optional parameters

Markup : * picture
Markup : * email
Markup : * phone


In addition, a custom style can also be applied to the same via:

Markup : 1. phoneStyle
Markup : 2. emailStyle

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

### Bulleted list

Markup : * Submit an issue describing the bug or feature request.
Markup : * Fork the repository and make changes in a new branch.
Markup : * Submit a pull request with your changes.