import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/model/topic.dart';
import 'view_model.dart';

class TopicListView extends HookConsumerWidget {
  const TopicListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(topicListViewModel);

    useEffect(() {
      viewModel.fetch();
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Software Topics'),
      ),
      body: ListView.builder(
        itemCount: viewModel.state.topics.length,
        itemBuilder: (_, index) =>
            _createItemView(viewModel.state.topics[index]),
      ),
      floatingActionButton: HookBuilder(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }

  Widget _createItemView(Topic model) {
    return ListTile(
      title: Text(model.name),
    );
  }
}
