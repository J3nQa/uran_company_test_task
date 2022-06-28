import 'package:flutter/material.dart';
import 'package:uran_company_test_task/bloc/exhibit_feed/exhibits_feed_state.dart';
import 'package:uran_company_test_task/ui/widgets/failure_widget.dart';

import 'exhibits_feed_success.dart';

class ExhibitsFeedStateBuilder extends StatelessWidget {
  final ExhibitsFeedState state;
  const ExhibitsFeedStateBuilder({Key? key, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state.map<Widget>(
      initial: (s) => const Center(child: CircularProgressIndicator.adaptive()),
      success: (s) => ExhibitsFeedSuccess(s.items),
      failure: (s) => const FailureWidget(),
    );
  }
}
