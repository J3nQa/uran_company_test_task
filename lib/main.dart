import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:uran_company_test_task/ui/pages/exhibit_details/exhibit_details.dart';
import 'package:uran_company_test_task/ui/pages/exhibits_feed/exhibits_feed.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(const ExhibitionApp()),
  );
}

class ExhibitionApp extends StatelessWidget {
  const ExhibitionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exhibition',
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        '/': (_) => const ExhibitsFeed(),
        ExhibitDetails.routeName: (_) => const ExhibitDetails(),
      },
    );
  }
}
