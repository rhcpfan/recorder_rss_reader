import 'package:flutter/material.dart';
import 'package:recorder_rss_reader/src/sample_feature/sample_item.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key, required this.item});
  final SampleItem item;

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Text('More Information about ${item.title} here'),
      ),
    );
  }
}
