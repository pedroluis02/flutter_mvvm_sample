import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_mvvm_sample/domain/model/topic.dart';
import 'package:flutter_mvvm_sample/domain/repository/topic.dart';
import 'package:flutter_mvvm_sample/presentation/topic_list/view_model.dart';
import 'package:flutter_mvvm_sample/presentation/topic_list/view.dart';

import 'app.dart';

void main() {
  testWidgets('Topic List View', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          topicListViewModel
              .overrideWith((_) => TopicListViewModel(TopicRepositoryMock())),
        ],
        child: const MyApplicationTest(
          home: TopicListView(),
        ),
      ),
    );

    final element = tester.element(find.byType(TopicListView));
    final container = ProviderScope.containerOf(element);

    final viewModel = container.read(topicListViewModel);
    expect(viewModel.state.topics.length, 1);
  });
}

class TopicRepositoryMock implements TopicRepository {
  final _topics = const <Topic>[Topic('1', 'Topic 1')];

  @override
  Future<List<Topic>> findAll() async => _topics;
}
