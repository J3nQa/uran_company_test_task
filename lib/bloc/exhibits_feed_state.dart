import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uran_company_test_task/models/exhibit.dart';

part 'exhibits_feed_state.freezed.dart';

@freezed
abstract class ExhibitsFeedState with _$ExhibitsFeedState {
  const ExhibitsFeedState._();

  const factory ExhibitsFeedState.initial() = Initial;
  const factory ExhibitsFeedState.success(List<Exhibit> items) = Success;
  const factory ExhibitsFeedState.failure() = Failure;
}
