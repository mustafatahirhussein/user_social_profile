import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_social_profile/src/social_icon_const.dart';
import 'package:user_social_profile/src/widgets/user_profile_handler_custom.dart';
import 'package:user_social_profile/src/widgets/platform_icon_custom_widget.dart';

class UserSocialProfile extends StatelessWidget {
  ///Supported Icons
  /// Behance, Youtube, Linkedin, Github, Twitter, Instagram, Meta, Stackoverflow, Medium

  const UserSocialProfile(
      {Key? key,
      required this.fullName,
      this.picture,
      this.nameStyle,
      this.email,
      this.emailStyle,
      this.phone,
      this.phoneStyle,
      required this.icons})
      : super(key: key);

  final String? picture;

  final String fullName;
  final TextStyle? nameStyle;

  final String? email;
  final TextStyle? emailStyle;

  final String? phone;
  final TextStyle? phoneStyle;

  final List<SocialIcon> icons;

  @override
  Widget build(BuildContext context) {
    TextStyle style =
        const TextStyle(fontSize: 50, fontWeight: FontWeight.normal);

    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UserProfileHandlerCustom(imageUrl: picture!),
            const SizedBox(
              height: 30,
            ),
          ],
        ),

        Text(fullName,
            softWrap: true,
            textAlign: TextAlign.center,
            style: nameStyle ?? style.copyWith(fontWeight: FontWeight.bold)),
        email == null
            ? Container()
            : Text(
                "Email: ${email!}",
                textAlign: TextAlign.center,
                softWrap: true,
                style: emailStyle ?? style.copyWith(fontSize: 18),
              ),
        phone == null
            ? Container()
            : Text(
                "Phone: ${phone!}",
                textAlign: TextAlign.center,
                softWrap: true,
                style: phoneStyle ?? style.copyWith(fontSize: 18),
              ),

        SizedBox(
          height: 20,
        ),

        ///Horizontal Class for Social Icon
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 6,
              spacing: 8,
              children: icons
                  .map(
                    (e) => SocialIcon(
                      name: e.name,
                      link: e.link,
                      iconSize: e.iconSize,
                    ),
                  )
                  .toList()),
        ),
      ],
    );
  }
}

///Icon Class
class SocialIcon extends StatelessWidget {
  const SocialIcon(
      {Key? key, required this.name, required this.link, this.iconSize})
      : super(key: key);

  final String name;
  final String link;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: iconSize ?? 50,
        width: iconSize ?? 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: PlatformIconCustomWidget(path: name),
      ),
      onTap: () => gotoUrl(link),
    );
  }

  ///Access Link
  dynamic gotoUrl(String url) async {
    if (await launchUrl(Uri.parse(url))) {
      throw "Error";
    }
  }
}

///Social Media Icons
class Platform {
  static String linkedin = SocialConst.urlLinkedin;
  static String github = SocialConst.urlGithub;
  static String behance = SocialConst.urlBehance;
  static String instagram = SocialConst.urlInstagram;
  static String medium = SocialConst.urlMedium;
  static String meta = SocialConst.urlMeta;
  static String stack = SocialConst.urlStackoverflow;
  static String youtube = SocialConst.urlYoutube;
  static String twitter = SocialConst.urlTwitter;
}

// Unit Test
class Validate {
  static delayValueChange() {
    int val = 0;
    debugPrint(val.toString());
    val = 1;
    debugPrint(val.toString());
  }
}
