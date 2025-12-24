import 'package:flutter/material.dart';
import 'package:mileage_run/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Album')),
      body: ListView.builder(
        itemCount: photoLinks.length,
        itemBuilder: (context, index) {
          final link = photoLinks[index];
          return ListTile(
            title: Text(link['title']!),
            trailing: IconButton(
              icon: const Icon(Icons.open_in_new, color: Colors.green),
              onPressed: () async {
                final uri = Uri.parse(link['url']!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
            ),
            onTap: () async {
              final uri = Uri.parse(link['url']!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              }
            },
          );
        },
      ),
    );
  }
}
