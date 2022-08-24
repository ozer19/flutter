import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  final Uri url = Uri.parse('https://www.youtube.com');

  Future<void> launchUrl(Uri uri) async {
    if (await canLaunchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
