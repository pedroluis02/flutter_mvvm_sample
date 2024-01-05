import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repository/topic.dart';
import '../../datasource/sample/providers.dart';
import '../common/view_model.dart';
import 'view_state.dart';

final topicListViewModel = ChangeNotifierProvider(
    (ref) => TopicListViewModel(ref.read(topicRepositoryProvider)));

class TopicListViewModel extends ViewModelWithState<TopicListViewState> {
  final TopicRepository _repository;

  TopicListViewModel(this._repository) : super(TopicListViewState.empty());

  void fetch() async {
    final list = await _repository.findAll();
    updateState((currentSate) => currentSate.copyWith(topics: list));
  }
}
