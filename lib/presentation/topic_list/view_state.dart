import '../../domain/model/topic.dart';

class TopicListViewState {
  final List<Topic> topics;

  const TopicListViewState(this.topics);

  TopicListViewState copyWith({List<Topic>? topics}) =>
      TopicListViewState(topics ?? this.topics);

  factory TopicListViewState.empty() => const TopicListViewState([]);
}
