import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/material.dart';
import 'package:recorder_rss_reader/src/sample_feature/sample_item.dart';
import 'package:url_launcher/url_launcher.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key, required this.item});
  final SampleItem item;

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: ListView(shrinkWrap: true, children: [
        Html(
          data: item.content,
          onLinkTap: (url, attributes, element) async {
            var uri = Uri.parse(url ?? "");
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            } else {
              throw Exception('Could not launch $uri');
            }
          },
        ),
      ]),
    );
  }
}
