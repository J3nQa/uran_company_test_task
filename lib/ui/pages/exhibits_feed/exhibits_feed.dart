import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uran_company_test_task/bloc/exhibits_feed_bloc.dart';
import 'package:uran_company_test_task/bloc/exhibits_feed_event.dart';
import 'package:uran_company_test_task/bloc/exhibits_feed_state.dart';

import 'exhibits_feed_state_builder.dart';

class ExhibitsFeed extends StatelessWidget {
  const ExhibitsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<ExhibitsFeedBloc>(
        create: (BuildContext context) {
          return ExhibitsFeedBloc()..add(const ExhibitsFeedEvent.fetched());
        },
        child: BlocBuilder<ExhibitsFeedBloc, ExhibitsFeedState>(
          builder: (BuildContext context, ExhibitsFeedState state) {
            return SafeArea(
              child: Scaffold(
                body: ExhibitsFeedStateBuilder(state: state),
              ),
            );
          },
        ),
      ),
    );
  }
}
