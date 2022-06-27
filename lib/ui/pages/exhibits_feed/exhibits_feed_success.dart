import 'package:flutter/material.dart';
import 'package:uran_company_test_task/models/exhibit.dart';
import 'package:uran_company_test_task/ui/widgets/exhibit_feed_item.dart';

class ExhibitsFeedSuccess extends StatelessWidget {
  final List<Exhibit> items;

  const ExhibitsFeedSuccess(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      itemBuilder: _getItem,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.25),
    );
  }

  ExhibitFeedItem _getItem(BuildContext context, int index) {
    return ExhibitFeedItem(items[index]);
  }
}
