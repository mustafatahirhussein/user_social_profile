import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_social_profile/src/utils/constants.dart';
import 'package:user_social_profile/src/widgets/app_network_image.dart';
import 'package:flutter/services.dart';
import 'package:user_social_profile/src/widgets/social_network_image.dart';
part 'package:user_social_profile/src/widgets/social_icons_widget.dart';

class UserSocialProfile extends StatelessWidget {
  const UserSocialProfile({
    super.key,
    required this.name,
    this.avatar,
    this.nameStyle,
    this.email,
    this.emailStyle,
    this.phone,
    this.phoneStyle,
    required this.socialPlatforms,
    this.cardColor,
  });

  final String? avatar;
  final String name;
  final TextStyle? nameStyle;
  final String? email;
  final TextStyle? emailStyle;
  final String? phone;
  final TextStyle? phoneStyle;
  final List<SocialIconsWidget> socialPlatforms;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor ?? theme.cardColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: theme.primaryColor.withValues(alpha: 0.1),
                    width: 4,
                  ),
                ),
                child: AppNetworkImage(imageUrl: avatar),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          nameStyle ??
                          const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                    ),
                    if (email != null)
                      _buildContactItem(
                        context,
                        Icons.email_outlined,
                        email!,
                        emailStyle,
                      ),
                    if (phone != null)
                      _buildContactItem(
                        context,
                        Icons.phone_android_outlined,
                        phone!,
                        phoneStyle,
                      ),
                  ],
                ),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(height: 1),
          ),

          Text(
            "Connect with me",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: theme.hintColor,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 12,
            children: socialPlatforms,
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    BuildContext context,
    IconData icon,
    String value,
    TextStyle? customStyle,
  ) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: value));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("$value copied to clipboard"),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Row(
          children: [
            Icon(icon, size: 14, color: Theme.of(context).primaryColor),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                value,
                style:
                    customStyle ??
                    TextStyle(fontSize: 12, color: Theme.of(context).hintColor),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///Social Media Icons
class Platform {
  static String linkedin = Constants.urlLinkedin;
  static String github = Constants.urlGithub;
  static String behance = Constants.urlBehance;
  static String instagram = Constants.urlInstagram;
  static String medium = Constants.urlMedium;
  static String meta = Constants.urlMeta;
  static String stack = Constants.urlStackoverflow;
  static String youtube = Constants.urlYoutube;
  static String twitter = Constants.urlTwitter;
}

// Unit Test
class Validate {
  static int delayValueChange() {
    int val = 0;
    debugPrint(val.toString());
    val = 1;
    debugPrint(val.toString());
    return val;
  }
}
