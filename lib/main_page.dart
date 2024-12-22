import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text(
                "Home",
              ),
            ),
            TextButton(
              onPressed: () {
                context.go('/about');
              },
              child: const Text(
                "About",
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Contact",
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Experience",
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.facebook_outlined),
          ),
          IconButton(
            onPressed: _launchTiktokWeb,
            icon: const Icon(Icons.tiktok),
          ),
        ],
      ),
      body: const Center(
        child: Text("Hello World!"),
      ),
    );
  }

  void _launchTiktokWeb() async {
    var url = Uri.parse('https://www.tiktok.com/@hoeskieecode');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
