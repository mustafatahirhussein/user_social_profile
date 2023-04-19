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

## Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)
4. [Collaboration](#collaboration)
5. [FAQs](#faqs)
### General Info
***
Write down general information about your project. It is a good idea to always put a project status in the readme file. This is where you can add it.
### Screenshot
![Image text](https://www.united-internet.de/fileadmin/user_upload/Brands/Downloads/Logo_IONOS_by.jpg)
## Technologies
***
A list of technologies used within the project:
* [Technology name](https://example.com): Version 12.3
* [Technology name](https://example.com): Version 2.34
* [Library name](https://example.com): Version 1234
## Installation
***
A little intro about the installation.
```
$ git clone https://example.com
$ cd ../path/to/the/file
$ npm install
$ npm start
```
Side information: To use the application in a special environment use ```lorem ipsum``` to start
## Collaboration
***
Give instructions on how to collaborate with your project.
> Maybe you want to write a quote in this part.
> Should it encompass several lines?
> This is how you do it.
## FAQs
***
A list of frequently asked questions
1. **This is a question in bold**
   Answer to the first question with _italic words_.
2. __Second question in bold__
   To answer this question, we use an unordered list:
* First point
* Second Point
* Third point
3. **Third question in bold**
   Answer to the third question with *italic words*.
4. **Fourth question in bold**
   | Headline 1 in the tablehead | Headline 2 in the tablehead | Headline 3 in the tablehead |
   |:--------------|:-------------:|--------------:|
   | text-align left | text-align center | text-align right |
