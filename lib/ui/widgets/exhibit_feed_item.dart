import 'package:flutter/material.dart';
import 'package:uran_company_test_task/models/exhibit.dart';

import 'no_image_widget.dart';

class ExhibitFeedItem extends StatelessWidget {
  final Exhibit model;

  const ExhibitFeedItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageUrl = model.images.first;
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  fit: BoxFit.cover,
                  imageUrl,
                  errorBuilder: (c, e, s) => const NoImageWidget(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      margin: const EdgeInsets.all(8),
                      height: constraints.maxHeight * 0.3,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          model.title,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 24),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
