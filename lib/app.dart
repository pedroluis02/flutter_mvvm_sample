import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/topic_list/view.dart';

class MyApplication extends ConsumerWidget {
  final String title;

  const MyApplication({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: title,
      home: const TopicListView(),
    );
  }
}
