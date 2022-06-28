import 'package:flutter/material.dart';
import 'package:uran_company_test_task/ui/pages/exhibit_details/exhibit_details_nav_args.dart';
import 'package:uran_company_test_task/ui/widgets/no_image_widget.dart';

class ExhibitDetails extends StatelessWidget {
  static const String routeName = '/ExhibitDetails';

  const ExhibitDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = (ModalRoute.of(context)!.settings.arguments
            as ExhibitDetailsNavigationArgs)
        .model;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          model.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: model.images.length,
        itemBuilder: (context, index) {
          var imageUrl = model.images[index];
          return Image.network(
            imageUrl,
            errorBuilder: (c, e, s) => const NoImageWidget(),
          );
        },
      ),
    );
  }
}
