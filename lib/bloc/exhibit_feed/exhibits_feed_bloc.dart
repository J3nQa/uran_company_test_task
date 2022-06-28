import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:uran_company_test_task/services/exhibition_service.dart';

import 'exhibits_feed_event.dart';
import 'exhibits_feed_state.dart';

class ExhibitsFeedBloc extends Bloc<ExhibitsFeedEvent, ExhibitsFeedState> {
  final ExhibitionService exhibitsService = ExhibitionService();

  ExhibitsFeedBloc() : super(const ExhibitsFeedState.initial()) {
    on<Fetched>(onExhibitsFeedFetch);
  }

  FutureOr<void> onExhibitsFeedFetch(
    Fetched event,
    Emitter<ExhibitsFeedState> emit,
  ) async {
    try {
      var exhibitList = await exhibitsService.getExhibitList();
      emit(ExhibitsFeedState.success(exhibitList));
    } on Exception {
      emit(const ExhibitsFeedState.failure());
    }
  }
}
