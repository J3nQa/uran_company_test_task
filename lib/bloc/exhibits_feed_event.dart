import 'package:freezed_annotation/freezed_annotation.dart';

part 'exhibits_feed_event.freezed.dart';

@freezed
class ExhibitsFeedEvent with _$ExhibitsFeedEvent {
  const ExhibitsFeedEvent._();

  const factory ExhibitsFeedEvent.fetched() = Fetched;
}
